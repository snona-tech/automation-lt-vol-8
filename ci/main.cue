package pages

import (
	"dagger.io/dagger"
	"dagger.io/dagger/core"
	"universe.dagger.io/docker"
	"universe.dagger.io/bash"
)

dagger.#Plan & {
	client: {
		filesystem: {
			"../slide": read: {
				contents: dagger.#FS
				exclude: [
					"README.md",
					".gitignore",
					"node_modules",
					"dist",
				]
			}
			"../dist": write: contents: actions.build.contents.output
		}
		env: {
			REPOSITORY_NAME: string | *"/"
		}
	}

	actions: build: {
		buildDeps: docker.#Build & {
			steps: [
				docker.#Pull & {source: "node:18-bullseye"},
				docker.#Copy & {
					contents: client.filesystem."../slide".read.contents
					dest:     "/slide"
				},
				bash.#Run & {
					workdir: "/slide"
					script: contents: """
						npm i
						npx slidev build --base '\(client.env.REPOSITORY_NAME)'
						"""
				},
			]
		}
		contents: core.#Subdir & {
			input: buildDeps.output.rootfs
			path:  "./slide/dist"
		}
	}
}

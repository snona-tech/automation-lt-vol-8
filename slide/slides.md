---
theme: seriph
background: https://source.unsplash.com/collection/94734566/1920x1080
class: text-center
highlighter: shiki
lineNumbers: false
drawings:
  persist: false
exportFilename: 'automation_lt_vol_8_snona_tech'
title: Dagger
titleTemplate: '%s - 自動化LT vol.8'
---

# Dagger

− 最強（かもしれない）CI/CD 環境 −

_Nona Tech_<br>_Sep. 14, 2022_

<style>
h1 {
  -webkit-text-fill-color: unset;
  -moz-text-fill-color: unset;
}
</style>

---
layout: center
---

# 自分について

<h3>
  <ruby>
    <rb><strong>Nona Tech</strong></rb>
    <rp>（</rp>
    <rt>ノナテック</rt>
    <rp>）</rp>
  </ruby>
  /<logos-twitter class="ml-1"/>@snona_tech
</h3>

Cloud Native Technical Officer

<logos-aws class="text-3xl"/>
<logos-terraform-icon class="text-3xl ml-5"/>
<logos-docker-icon class="text-3xl ml-5"/>
<logos-jfrog class="text-3xl ml-5"/>
<logos-visual-studio-code class="text-3xl ml-5"/>

---
layout: center
---

# 今日伝えたいこと

<h2 v-click><strong>Dagger よさそうだよ！</strong></h2>

---
layout: center
---

# Dagger

<br>
<h2>
  <span v-click="1">
    <font color="orange">
      <strong>Dag</strong>
    </font>
     / gerr
    <fa6-solid-not-equal class="text-3xl ml-5"/>
  </span>
    <twemoji-dagger class="text-3xl ml-5"/>
  <br>
  <br>
  <span v-click="2">
    <material-symbols-subdirectory-arrow-right class="text-3xl"/>
    <ruby>
      <rb>
        <font color="orange"><strong>D</strong></font>irected
        <font color="orange"><strong> a</strong></font>cyclic
        <font color="orange"><strong> g</strong></font>raph
      </rb>
        <rp>（</rp>
          <rt>有向非巡回グラフ</rt>
        <rp>）</rp>
    </ruby>
  </span>
  <br>
  <span v-click="3">
    <material-symbols-subdirectory-arrow-right class="text-3xl"/>
    Build <noto-v1-right-arrow/> Test <noto-v1-right-arrow/> Deploy といったフロー
    <img src="/images/dag.png" style="width: 40%;margin: auto;">
  </span>
</h2>

---
layout: center
---

# What's Dagger ?

<v-clicks>

* `ポータブルな CI/CD 開発キット`というコンセプトの OSS
* Docker の生みの親がプロジェクトを推進している
* 一度パイプラインを作成すれば、どこでも（ローカルでも）実行できる

</v-clicks>
<br>
<img src="/images/dagger.webp" class="w-80 mx-auto">

---
layout: center
---

# Dagger は何を解決するのか

<img v-click="1" src="/images/cicd.drawio.svg" class="w-80 mx-auto">
<br>

<v-clicks>

* 様々な CI/CD ツールにロックインしない
* ローカルで CI/CD を実行・デバッグできる
  * ジョブ定義を毎回 Git リポジトリなどにプッシュ不要
* Docker パッケージを使用してイメージのビルドやプッシュが可能
  * 非推奨の D-in-D を行わなくて済む
* 既存の Dockerfile を再利用できる

</v-clicks>

---
layout: center
preload: false
---

# ちなみに...

<h3 v-click="1">このスライドは、<strong>Slidev</strong>で作成しています。</h3>

<ul>
  <li v-click="2">Markdown で作成可能な Web ベースのプレゼンテーションツール</li>
  <li v-click="3">ビルドすることで静的サイトとしてホスティングできる</li>
</ul>

<div class="w-60 relative mt-6">
  <div class="relative w-40 h-40">
    <img
      v-motion
      :initial="{ x: 800, y: -100, scale: 1.5, rotate: -50 }"
      :enter="final"
      class="absolute top-0 left-0 right-0 bottom-0"
      src="https://sli.dev/logo-square.png"
    />
    <img
      v-motion
      :initial="{ y: 500, x: -100, scale: 2 }"
      :enter="final"
      class="absolute top-0 left-0 right-0 bottom-0"
      src="https://sli.dev/logo-circle.png"
    />
    <img
      v-motion
      :initial="{ x: 600, y: 400, scale: 2, rotate: 100 }"
      :enter="final"
      class="absolute top-0 left-0 right-0 bottom-0"
      src="https://sli.dev/logo-triangle.png"
    />
  </div>

  <div
    class="text-5xl absolute top-14 left-40 text-[#2B90B6] -z-1"
    v-motion
    :initial="{ x: -80, opacity: 0}"
    :enter="{ x: 0, opacity: 1, transition: { delay: 2000, duration: 1000 } }">
    Slidev
  </div>
</div>
<div
  v-motion
  :initial="{ x:35, y: 40, opacity: 0}"
  :enter="{ y: 0, opacity: 1, transition: { delay: 3500 } }">
</div>

<script setup lang="ts">
  const final = {
    x: 0,
    y: 0,
    rotate: 0,
    scale: 1,
    transition: {
      type: 'spring',
      damping: 10,
      stiffness: 20,
      mass: 2
    }
  }
</script>

---
layout: center
---

# Dagger を使ってみた

## このスライドを GitHub Pages に公開してみました。

<img src="/images/slidev_cicd_0.drawio.svg" class="mt-5 mx-auto">

---
layout: center
---

# Dagger を使ってみた

## このスライドを GitHub Pages に公開してみました。

<img src="/images/slidev_cicd_1.drawio.svg" class="mt-5 mx-auto">

---
layout: center
---

# Dagger を使ってみた

## このスライドを GitHub Pages に公開してみました。

<img src="/images/slidev_cicd_2.drawio.svg" class="mt-5 mx-auto">

---
layout: center
---

# Dagger を使ってみた

## このスライドを GitHub Pages に公開してみました。

<img src="/images/slidev_cicd_3.drawio.svg" class="mt-5 mx-auto">

---
layout: center
---

# Dagger を使ってみた

## このスライドを GitHub Pages に公開してみました。

<img src="/images/slidev_cicd_4.drawio.svg" class="mt-5 mx-auto">

---
layout: two-cols
class: px-2
---

::default::

# GitHub Actions

* ビルドジョブはこんな感じ

```yaml
jobs:
  dagger:
    runs-on: ubuntu-latest
    steps:
      - name: Clone repository
        ・・・
      - name: Build Slidev
        uses: dagger/dagger-for-github@v3
        with:
          version: 0.2
          cmds: |
            project init
            project update
            do build
      - name: Deploy pages
        ・・・
```

::right::

# Dagger

* アクション定義はこんな感じ

```cue
actions: build: {
  ・・・
  bash.#Run & {
    script: contents: """
      npm install
      npm install -g @slidev/cli
      slidev build
      """
  },
  ・・・
}
```

<div v-click="1" class="absolute bottom-66 left-31 border-2 border-indigo-400 py-2 px-31"></div>
<div v-click="2" class="absolute bottom-38 left-35 border-2 border-red-400 py-7 px-17"></div>
<div v-click="3" class="absolute bottom-70 left-135 border-2 border-red-400 py-7 px-26"></div>

---
layout: center
---

# コードの詳細について

| <carbon-logo-github/>GitHub |                                                                                     |
| --------------------------- | ----------------------------------------------------------------------------------- |
| Repository                  | [snona-tech/automation-lt-vol-8](https://github.com/snona-tech/automation-lt-vol-8) |
| GitHub Pages                | https://snona-tech.github.io/automation-lt-vol-8                                    |

<style>
table {
  border-collapse: unset;
}
</style>

---
layout: image-right
image: https://source.unsplash.com/collection/94734566/1920x1080
class: bg-gray-800 text-center text-gray-300
---

# 最後に...

<br>

今回の LT を通じて少しでも

Dagger に興味を持っていただけたら幸いです

最高の CI/CD 環境を目指しましょう！

<img class="in_the_space w-70 mx-auto" src="/images/with_dagger.png">

<style>
@keyframes inTheSpace {
0%, 100% {
  transform: translateY(0);
}
50% {
  transform: translateY(-20px);
  }
}

.in_the_space {
  animation: 3s inTheSpace infinite;
}
</style>
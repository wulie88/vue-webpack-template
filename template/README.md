# {{ name }}

> {{ description }}

## Build Setup

``` bash
# install dependencies
# npm安装依赖包
npm install

# serve with hot reload at localhost:8080
# 本地开发模式
npm run dev

# build for production with minification
# 生成正式，git提交后自动部署到 http://app.activity.ffrj.net/{{ name }}/
npm run build

# build for production and view the bundle analyzer report
npm run build --report
{{#unit}}

# run unit tests
npm run unit
{{/unit}}
{{#e2e}}

# run e2e tests
npm run e2e
{{/e2e}}
{{#if_or unit e2e}}

# run all tests
npm test
{{/if_or}}
```

For a detailed explanation on how things work, check out the [guide](http://vuejs-templates.github.io/webpack/) and [docs for vue-loader](http://vuejs.github.io/vue-loader).

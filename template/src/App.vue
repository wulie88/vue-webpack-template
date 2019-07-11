<template>
  <div id="app">
    <img src="./assets/logo.png">
    {{#router}}
    <router-view/>
    {{else}}
    <HelloWorld/>
    {{/router}}
  </div>
</template>

<script>
import PinkApi from './utils/PinkApi'

var initOptionMenu = function () {
  var url = location.origin + location.pathname;
  var params = {title: '商城', summary:'Vue版积分商城', target_url:url, action_url:url, image_url:'http://img.fenfenriji.com/90/68/AE/Image/61970B89-7CDE-C18A-5BBE-5A6A9DAE75E0.jpg'}
  PinkApi.onMenuSharePink(params)
  PinkApi.showMenuItems(["menuItem:share:pink", "menuItem:share:social", "menuItem:copyUrl", "menuItem:openWithSafari"])
}

var installTrack = function () {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?833be5ac9686bb7b57b1c34a6dbb91d6";
  var s = document.getElementsByTagName("script")[0];
  s.parentNode.insertBefore(hm, s);
}

var stopLoading = function () {
  var element = document.getElementById("o2_loading");
  element.parentNode.removeChild(element);
}

{{#unless router}}
import HelloWorld from './components/HelloWorld'

{{/unless}}
export default {
  name: 'App',
  created () {
    initOptionMenu()
    stopLoading()
    installTrack()
  }{{#router}}{{else}},
  components: {
    HelloWorld
  }{{/router}}
}
</script>

<style lang="scss">
* {
  -webkit-tap-highlight-color: transparent;
  outline: 0;
  margin: 0;
  padding: 0;
  vertical-align: baseline;
}

body, h1, h2, h3, h4, h5, h6, hr, p, blockquote, dl, dt, dd, ul, ol, li, pre, form, fieldset, legend, button, input, textarea, th, td {
  margin: 0;
  padding: 0;
  vertical-align: baseline;
}

img {
  border: 0 none;
  vertical-align: top;
}

i, em {
  font-style: normal;
}

ol, ul {
  list-style: none;
}

input, select, button, h1, h2, h3, h4, h5, h6 {
  font-size: 100%;
  font-family: inherit;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}

a {
  text-decoration: none;
  color: #666;
}

body {
  margin: 0 auto;
  min-width: 320px;
  max-width: 768px;
  width: 100%;
  height: 100%;
  font-size: 14px;
  font-family: -apple-system, Helvetica, "Microsoft YaHei", Arial, sans-serif;
  line-height: 1.5;
  color: #666;
  text-size-adjust: 100% !important;
  user-select: none;
}

input[type="text"], textarea {
  appearance: none;
}

html {
  width: 100%;
  height: 100%;
}

.hide {
  display: none !important;
}

.clear {
  clear: both;
}

.fade-enter-active, .fade-leave-active {
  transition: opacity .3s ease;
}
.fade-enter, .fade-leave-to {
  opacity: 0;
}

.loading {
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  z-index: 400;
  background-color: #FAF7F8;
  display: flex;
  justify-content: center;
  align-items: center;

  .spinner {
    width: 100px;
    height: 100px;
    position: relative;
    margin: 100px auto;
  }
  .double-bounce1,
  .double-bounce2 {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border-radius: 50%;
    background-color: #fc2441;
    opacity: 0.6;
    animation: sk-bounce 2.0s infinite ease-in-out;
  }
  .double-bounce2 {
    animation-delay: -1.0s;
  }
}

@keyframes sk-bounce {
  0%,
  100% {
    transform: scale(0.0);
  }
  50% {
    transform: scale(1.0);
  }
}

</style>

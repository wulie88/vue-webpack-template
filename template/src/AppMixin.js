import axios from 'axios'

// 定义一个 App mixin 对象
var AppMixin = {
  baseUrl: 'http://test.activity.ffrj.net/distribution/forward',
  uid: '6767499',
  methods: {
    get: function (path, params) {
      var data = Object.assign({ router: path, uid: AppMixin.uid }, params)
      return axios.get(AppMixin.baseUrl, { params: data })
    }
  }
}

export default AppMixin;
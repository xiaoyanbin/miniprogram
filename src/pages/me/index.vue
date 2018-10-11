<template>
  <div class="container">
    <div class="userinfo">
      <img :src="userinfo.avatarUrl" alt="">
    <button open-type="getUserInfo" lang="zh_CN" @getuserinfo='agreeGetUser' >{{userinfo.nickName}}</button>
    
    </div>
    <YearProgress></YearProgress>

    <button  @click='scanBook' class='btn'>添加图书</button>
    <a href="/pages/books/main" class="counter">书列表</a>
  </div>
</template>

<script>
import config from '@/config'
import qcloud from 'wafer2-client-sdk'
import YearProgress from '@/components/YearProgress'
import {showSuccess, post, showModal} from '@/utils'
export default {
  components: {
    YearProgress
  },
  created () {
    console.log(333)
  },
  mounted(){
    // 一进来看看用户是否授权过
    this.getSetting()
  },
  data () {
    return {
      userinfo: {
        avatarUrl: '../../../static/img/unlogin.png',
        nickName: '点击登录'
      }
    }
  },
  methods: {
    async addBook (isbn) {
      const res = await post('/weapp/addbook', {
        isbn,
        openid: this.userinfo.openId
      })
      if(res.code==0&&res.data.title){
          showModal('添加成功', `${res.title}添加成功`)
      }
      
    },
    scanBook () {
      wx.scanCode({
        success: (res) => {
          if (res.result) {
            this.addBook(res.result)
          }
        }
      })
    },
    agreeGetUser:function (e) {
    //设置用户信息本地存储
      const session = qcloud.Session.get()
      let user = wx.getStorageSync('userinfo')     
      if (!user) {
            // 第二次登录
            // 或者本地已经有登录态
            // 可使用本函数更新登录态
            qcloud.setLoginUrl(config.loginUrl)
            qcloud.loginWithCode({
                success: res => {
                  console.log(111,res,session)
                  //  this.setData({ userInfo: res, logged: true })
                    wx.setStorageSync('userinfo', res) 
                    this.userinfo = res;
                    console.log(this.userinfo)
                    showSuccess('登录成功')
                },
                fail: err => {
                    showSuccess(err.message)
                }
            })
        } 
  }, 
  getSetting(){
     let user = wx.getStorageSync('userinfo'); 
     if(user){
        this.userinfo = user;
     }
     
  },
  onShow () {
    // console.log(123)
    let userinfo = wx.getStorageSync('userinfo')
    // console.log([userinfo])
    if (userinfo) {
      this.userinfo = userinfo
    }
    // console.log(this.userinfo)
  }
  
 }
}
</script>

<style  lang='scss'>
.container{
  padding:0 30rpx;
}  
.userinfo{
  margin-top:100rpx;
  text-align:center;
  img{
    width: 150rpx;
    height:150rpx;
    margin: 20rpx;
    border-radius: 50%;
  }
}
</style>

<template>
  <div>
    <br/><br/><br/><br/><br/>个人中心
    <YearProgress></YearProgress> 
  </div>
</template>

<script>
import YearProgress from '@/components/YearProgress'

export default {
  components: {
    YearProgress
  },
  created () {
    console.log(333)
  },
  methods: {
    increment () {
    },
    decrement () {
      
    }
  },
  
}
</script>

<style>
</style>

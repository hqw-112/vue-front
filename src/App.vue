<template>
  <ul><li v-for="(user) in users" :key="user.id">{{user.name}}</li></ul>
</template>

<script>
import axios from 'axios'

export default {
  name: 'App',
 data(){
  return{
    users:[]
  }
 },mounted(){
   axios.get('http://vip88tv.com/api/users').then(res=>{
     this.users=res.data;
     console.log(res.data)
   })
 }
}
</script>

<style>
</style>

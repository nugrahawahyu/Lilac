<template>
  <section class="container">
    <div class="content">
      <p>"We are shaped by our thoughts; we become what we think. When the mind is pure, joy follows like a shadow that never leaves."</p>
      <p>- Budha</p>
    </div>
  </section>
</template>

<script>
import axios from '~/plugins/axios'

export default {
  async asyncData () {
    let { data } = await axios.get('/api/users')
    return { users: data }
  },
  head () {
    return {
      title: 'Users'
    }
  }
}
</script>

<style scoped>
.title
{
  margin: 30px 0;
}
.users
{
  list-style: none;
  margin: 0;
  padding: 0;
}
.user
{
  margin: 10px 0;
}
.content {
  padding: 16px;
}
p {
  color: #fff;
}
</style>

<style>
body {
  background-color: #000;
  min-height: 100vh;
}
</style>

<template>
  <div id="app">
    <img >
    <!-- <HelloWorld/> -->
    <div>Hoeveel geld heeft u aan swapfiets verspilt?</div>
    <br/>
  <div>{{ money }} €</div>
  </div>
</template>

<script>
export default {
  name: 'App',
  data () {
    return {
      money: 0,
      monthlyBill: 13.5,
      startDate: '2020-2-11'
    }
  },
  computed: {
  },
  mounted: function () {
    window.setInterval(() => {
      this.money = ((Date.now() - new Date(this.startDate).getTime()) * this.monthlyBill / 1000 / 60 / 60 / 24 / 30.5).toFixed(6)
    }, 1000)
  }
}
</script>

<style>
html, body {
  padding: 0;
  margin: 0;
}

#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: white;
  margin: 10vh 0;
  height: 80vh;
  background-image: url("./assets/ruben.jpeg");
  background-repeat:no-repeat;
  background-position: center center;
  background-size: cover;
}
</style>

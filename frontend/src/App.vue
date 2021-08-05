<template>
  <div id="app">
    <h4>Hoeveel geld heeft u aan swapfiets verspilt?</h4>
    <div></div>
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
  mounted: function () {
    window.setInterval(() => {
      this.money = ((Date.now() - new Date(this.startDate).getTime()) * this.monthlyBill / 1000 / 60 / 60 / 24 / 30.5).toFixed(7)
    }, 100)
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

  color: white;
  
  /* text in center  */
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;

  /* space on screen */
  margin: 10vh 0;
  height: 80vh;

  /* background image  */
  background-image: url("./assets/ruben.jpeg");
  background-repeat:no-repeat;
  background-position: center center;
  background-size: cover;
}
</style>

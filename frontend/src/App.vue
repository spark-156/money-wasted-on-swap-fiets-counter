<template>
  <div id="app">
    <h4>Hoeveel geld heeft Sjuben aan swapfiets verspilt?</h4>
    {{ money }} €

    <div>
      <label for="monthlyBill">Monthly Bill</label>
      <input type="number" name="monthlyBill" v-model="monthlyBill">
    </div>

    <div>
      <label for="date">Start date</label>
      <input name="datetime-local" type="date" v-model="startDate" placeholder="2020-2-11"/>
    </div>
  </div>
</template>

<script>
export default {
  name: 'App',
  data () {
    return {
      money: 0,
      monthlyBill: 13.5,
      startDate: '2020/2/11'
    }
  },
  mounted: function () {
    window.setInterval(() => {
      this.money = (
        ((Date.now() - new Date(this.startDate).getTime()) * this.monthlyBill) /
        1000 /
        60 /
        60 /
        24 /
        30.5
      ).toFixed(7)
    }, 100)
  }
}
</script>

<style>
html,
body {
  background-color: #121212;
  padding: 0;
  margin: 0;
}

#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
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
  /* margin: 10vh 0; */
  height: 100vh;

  /* background image  */
  background-image: url("./assets/ruben.jpeg");
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
}

#app > div {
  display: flex;
  flex-direction: column;
  margin: 0.5vh;
  display: none;
}

#app > div > input {
  width: 200px;
  border: none;
  padding: 5px;
  border-radius: 10px;
  text-align: center;
}

/* Hide arrows for number inputs  */
/* Chrome, Safari, Edge, Opera */
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

/* Firefox */
input[type=number] {
  -moz-appearance: textfield;
}
</style>

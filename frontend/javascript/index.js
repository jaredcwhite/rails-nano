import "../styles/index.scss"
import axios from "axios"

document.addEventListener("DOMContentLoaded", () => {
  document.querySelector("#hello-rails").addEventListener("click", () => {
    axios.get("/backend/nano").then((response) => {
      document.querySelector("#rails-result").innerHTML = `
        <p>${response.data.hello}</p>
        <p>Booted at: ${response.data.boot_time}</p>
        <p>Current server time: ${response.data.current_time}</p>
      `
    })
  })
})
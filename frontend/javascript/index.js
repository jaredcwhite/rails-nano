import "../styles/index.scss"
import axios from "axios"

async function refreshProduct(sleepTime) {
  const pageId = location.pathname
  const response = await fetch(RAILS_API + "/backend" + pageId + "?sleep_time=" + Math.min(sleepTime, 10));
  const data = await response.text();
  const template = document.createElement("template")
  template.innerHTML = data

  const contentNode = document.querySelector("main-content")
  while (contentNode.firstChild && !contentNode.firstChild.remove());

  contentNode.replaceWith(template.content.querySelector("main-content"))
  document.querySelector("main").style.visibility = "visible"
}

window.refreshProduct = refreshProduct

document.addEventListener("DOMContentLoaded", () => {
  if (document.querySelector("#hello-rails")) {
    document.querySelector("#hello-rails").addEventListener("click", () => {
      axios.get(RAILS_API + "/backend/nano").then((response) => {
        document.querySelector("rails-result").innerHTML = `
          <p>${response.data.hello}</p>
          <p>Booted at: ${response.data.boot_time}</p>
          <p>Current server time: ${response.data.current_time}</p>
          <p>PostgreSQL sample: ${response.data.widget}</p>
        `
      })
    })
  }

  if (document.querySelector("product-description")) {
    document.querySelector("main").style.visibility = "hidden"
    setTimeout(() => {
      document.querySelector("main").style.visibility = "visible"
    }, 1000) // in case the request takes too long...

    refreshProduct(0)
  }
})
import * as React from "react"
import { createRoot } from "react-dom/client"
import App from "./components/App"
// import { BrowserRouter as Router, Route } from 'react-router-dom'

document.addEventListener("DOMContentLoaded", () => {
  const container = document.createElement("div")
  document.body.appendChild(container)
  const root = createRoot(container)
  root.render(React.createElement(App))
})

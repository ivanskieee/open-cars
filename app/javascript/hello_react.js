import * as React from "react"
import { createRoot } from "react-dom/client"

const Hello = (props) =>
  React.createElement("div", null, `Hello ${props.name}!`)

document.addEventListener("DOMContentLoaded", () => {
  const container = document.createElement("div")
  document.body.appendChild(container)
  const root = createRoot(container)
  root.render(React.createElement(Hello, { name: "React" }))
})

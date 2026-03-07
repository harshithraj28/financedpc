import { createRoot } from "react-dom/client";
import App from "./App";
import "./index.css";
import { setupInstallButton } from "./installPWA";

createRoot(document.getElementById("root")!).render(<App />);
if ("serviceWorker" in navigator) {
  window.addEventListener("load", () => {
    navigator.serviceWorker
      .register("/service-worker.js")
      .then(reg => console.log("Service Worker Registered", reg))
      .catch(err => console.error("SW failed:", err));
  });
  setupInstallButton();
}
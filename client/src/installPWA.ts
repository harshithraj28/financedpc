let deferredPrompt: any;

export function setupInstallButton() {

  const installBtn = document.getElementById("installApp");

  window.addEventListener("beforeinstallprompt", (e:any) => {

    e.preventDefault();

    deferredPrompt = e;

    if (installBtn) installBtn.style.display = "block";

  });

  installBtn?.addEventListener("click", async () => {

    if (!deferredPrompt) {
      alert("Use browser install option in address bar");
      return;
    }

    deferredPrompt.prompt();

    const { outcome } = await deferredPrompt.userChoice;

    console.log("User choice:", outcome);

    deferredPrompt = null;

    if (installBtn) installBtn.style.display = "none";

  });

}
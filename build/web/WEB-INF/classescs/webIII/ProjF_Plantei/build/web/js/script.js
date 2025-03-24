function acessarPlantei() {
    window.open("/ProjF_Plantei/auth/login.jsp", "_blank");
}

function updateFileName(input) {
    const fileName = input.files.length > 0 ? input.files[0].name : "Nenhum arquivo selecionado";
    document.getElementById("file-name").textContent = fileName;
}

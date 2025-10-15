const modal = document.getElementById('modal');
const modalImg = modal.querySelector('img');
const closeBtn = modal.querySelector('.close-btn'); // Botão X
const links = document.querySelectorAll('.grid-menu a');

// Ao clicar no link, abre o modal
links.forEach(link => {
  link.addEventListener('click', function(e) {
    e.preventDefault();
    modal.style.display = 'flex';
    modalImg.src = this.href;
  });
});

// Ao clicar fora da imagem, fecha o modal
modal.addEventListener('click', e => {
  if (e.target === modal) {
    closeModal();
  }
});

// Ao clicar no X, fecha o modal
closeBtn.addEventListener('click', closeModal);

// Função para fechar o modal
function closeModal() {
  modal.style.display = 'none';
  modalImg.src = '';
}

// Récupération des éléments HTML pertinents
const overlay = document.querySelector('.overlay');
const modal = document.querySelector('.modal');
const tableRows = document.querySelectorAll('.clickable-row');

// Fonction pour afficher la modal
function showModal(event) {
    // Empêche le comportement par défaut de l'événement de clic
    event.preventDefault();

    // Récupère les informations de la ligne cliquée
    const id = this.querySelector('.id').textContent;
    const supplierName = this.querySelector('.mediaS').textContent;
    const price = this.querySelector('.price').textContent;
    const quantity = this.querySelector('.quantity').textContent;

    // Crée une requête AJAX pour récupérer le contenu de la boîte modale
    const xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                // Remplit la boîte modale avec le contenu récupéré
                modal.innerHTML = xhr.responseText;
                modal.style.display = 'block';
                overlay.style.display = 'block';
            } else {
                console.error('Une erreur s\'est produite lors de la récupération du contenu de la boîte modale');
            }
        }
    }
    xhr.open('GET', 'modal.php?i=' + encodeURIComponent(id));
    xhr.send();
}

// Fonction pour masquer la modal
function hideModal() {
    overlay.style.display = 'none';
    modal.style.display = 'none';
}

// Écouteurs d'événements pour chaque ligne du tableau
tableRows.forEach(row => {
    row.addEventListener('click', showModal);
});

// Écouteur d'événement pour la div overlay
overlay.addEventListener('click', hideModal);


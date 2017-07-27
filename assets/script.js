
$(function(){


	// Affice le bouton 'View info' sur chaque image en passant la souris.	
	$('figure').each(function(){
		$(this).on('mouseover', function(){
			$('span').css('display', 'block');
		})

		$(this).on('mouseout', function(){
			$('span').css('display', 'none');
		})
		
	});

	


})

// Reset l'état du modal
$('body').on('hidden.bs.modal', function(){
	window.location.href = './';
})


// Change le bouton "Reserver" par "Envoyer" et son attribut
function changeButton(div, id){	
	$('#modal-form-'+ id).show('slow');

	if(div.textContent == "Réserver") {
		div.className = 'btn btn-danger';
		div.textContent = 'Envoyer';		
	} else {
		div.type = "submit";
		ajaxReserveForm(id);
	}


	
	
}


// Ajax pour traiter les données du formulaire et envoyer un feedback
function ajaxReserveForm(id) {

	$('#form-'+ id).submit(function(e){
		e.preventDefault();
		var $form = $(this);

		$.post('feedback.php', $form.serialize())
		.done(function(data){
			$('#modal-feedback-' +id).html(data);
		})
		.fail(function(){
			alert('ça marche pas...');
		})

	})
}




$(document).ready(function () {

	$('.response .toggle-edit').on('click', function () {
		$(this).closest('div.response').find('form').slideToggle();
	})

	$('.create-response .toggle-create').on('click', function() {
		$(this).closest('div.create-response').find('form').slideToggle();
	})
	
})

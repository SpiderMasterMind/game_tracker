$(document).on("turbolinks:load", function() {
	var self = this;
	if ($("body.plays.new").length === 1) {		
		$("input[value='Create Play']").on("click", function(event) {
			if (inputsMissing()) {
				event.preventDefault();
				alert("Missing Game and/or User(s)!")
			}
		})
	};
});

function inputsMissing() {
	var numberOfSelections = $("form").serializeArray().length - 4;
	return numberOfSelections <= 1;
}



//		return true;
//	} else if (!$("form").serializeArray().some(function(field) { field.name === "play[game_id]" && field.value !== "" })) { 
//		return true;
//	} else {
//		return false;
//	}
// }


// can we separate the composing of the object function, and do a js script-page-specific render of the object instead?
// refactor & redefine what the 'utility function' actually does, then separate, then think about how to render it
//

$(document).ready(function() {
	var selectedObj = {};
	var dropdownButtons = document.querySelectorAll("[data-dropdown]");

	// This overrides bootstrap's behaviour of closing the dropdown menu when and item is selected
	document.querySelectorAll(".dropdown-menu").forEach(function(menu) {
		menu.addEventListener("click", function(event) {
			event.stopPropagation();
		});
	});
	
	document.querySelectorAll(".dropdown-menu").forEach(function(menu) {
		menu.addEventListener("change", function(event) {
			var selectedItems = getSelected(event);
			var parentButtonIdentifier = getCustomIdentifier(event.target);
			composeSelectedObj(selectedItems, parentButtonIdentifier);
			console.log(selectedObj);		

			var keys = Object.keys(selectedObj);
			testText = []
			keys.forEach(function(key) {
				console.log(key + ": " + selectedObj[key]);
				testText.push(key + ": " + selectedObj[key]);
			})
			$(".messages").text(testText)
			

		});
	});

	function composeSelectedObj(selectedItems, parentButton) {
		// can we make it not global or will that mess up the overwriting?	
		var arr = [];
		selectedItems.forEach(function(item) {
			arr.push(item.getAttribute("value"));
		});
		selectedObj[parentButton] = arr || [];
	}
		

	function getSelected(event) {
		var parentButton = ensureParentIsCustomAttribute(event.target);
			if (parentButton) {
				var checkedItems = parentButton.querySelectorAll("input[type='checkbox']");
				if (checkedItems.length) {
					return returnSelected(checkedItems);
				} else {
					return returnSelected(parentButton.querySelectorAll("input[type='radio']"));
				}
			} else { return }
	}


	function returnSelected(items) {
		items = Array.prototype.slice.call(items);
		items = items.filter(function(item) { return item.checked });
		return items;
	}

	function getCustomIdentifier(target) {
		var nodes = dropdownButtons; 
		for (var i = 0; i <= nodes.length; i += 1) {
			if (nodes[i].contains(target)) {
			 	return nodes[i].getAttribute("data-dropdown");
			}
		}
	}


	function ensureParentIsCustomAttribute(input) {
		var nodes = dropdownButtons; 
		for (var i = 0; i <= nodes.length; i += 1) {
			if (nodes[i].contains(input)) {
			 	return nodes[i];
			}
		}
		return false;		
	}

});

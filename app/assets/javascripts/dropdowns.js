document.addEventListener('DOMContentLoaded', function() {
	var selectedObj = {};
	var dropdownButtons = document.querySelectorAll("[data-dropdown]");
	var messagesArea = document.querySelectorAll(".messages")[0];

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
			updateHighlighting();
			renderOutput();
		});
	});

	function updateHighlighting() {
		document.querySelectorAll(":checked").forEach(function(checkedItem) {
		checkedItem.parentElement.style.backgroundColor = "#A9A9A9"; 
		});
		var inputs = document.querySelectorAll("input[type=checkbox], input[type=radio]");
		var unchecked = [].filter.call(inputs, function(el) {
    	return !el.checked
		});
		unchecked.forEach(function(uncheckedItem) {
			uncheckedItem.parentElement.style.backgroundColor = "white";
		});
	}

	function renderOutput() {
		var output = [];
		if (Object.keys(selectedObj).length === 0) {
			messagesArea.innerHTML = "";
		} else {
			var keys = Object.keys(selectedObj);
			console.log(keys);
			if (keys.indexOf("players") !== -1) { 
				selectedObj["players"].forEach(function(playerId) {
					output.push(getPlayerInfo(playerId));
				})
			}

			if (keys.indexOf("game") !== -1) {
				output.push(populateGameInfo(selectedObj["game"][0]));
			}
			messagesArea.innerHTML = formatOutput(output);
		};
	};

	function formatOutput(output) {
		return output.map(function(el, index, arr) {
				return "<li>" + el + "</li>"
		}).join("");
	};

	function getPlayerInfo(playerId) {
		return document.querySelectorAll("label[for='play_user_ids_" + playerId + "']")[0].textContent;
	};

	function populateGameInfo(gameId) {
		return document.querySelectorAll("label[for='play_game_id_" + gameId + "']")[0].textContent;
	};

	function composeSelectedObj(selectedItems, parentButton) {
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

}, false);

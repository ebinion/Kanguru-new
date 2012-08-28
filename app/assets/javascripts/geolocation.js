function getGeoLocation() {
	  navigator.geolocation.getCurrentPosition(setGeoCookie);
	}

	function setGeoCookie(position) {
		var latitude = position.coords.latitude;
	    var longitude = position.coords.longitude;
	    var accuracy = position.coords.accuracy;

	    document.cookie = "lat=" + escape(latitude);
	    document.cookie = "lon=" + escape(longitude);
	    document.cookie = "acc=" + escape(accuracy);
	}
	



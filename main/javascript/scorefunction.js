function scorefunc() {}

		$(document).ready(function() //ready event handler //ensures code inside handler executes when dom content is loaded
		{
			scorefunc();
			loadstation();
		});

		function loadstation() //loading the contents of scoretable
		{
			$("#scoretable").load("scoretable.php");//load method uses ajax to fetch and insert.
			setTimeout(loadstation, 500);
		}
<html>








<head>
	<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
	<title>{$settings.site_name}</title>

	<link rel="icon" href="styles/images/favicon.png">
	<link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
	<link href='styles/bootstrap.min.css' rel='stylesheet' type='text/css'>
	 <link href='styles/animate.css' rel='stylesheet' type='text/css'>
	<link href='styles/custom.css' rel='stylesheet' type='text/css'>
	<script src='styles/jquery.js' type='text/javascript'></script>
	<script src='styles/bootstrap.min.js' type='text/javascript'></script>
	<script src='styles/bitcoinprices.js'></script>


 {literal}<script type="text/javascript">
 $(document).ready(function() {
        bitcoinprices.init({

            // Where we get bitcoinaverage data
            url: "https://api.bitcoinaverage.com/ticker/all",

            // Which of bitcoinaverages value we use to present prices
            marketRateVariable: "last",

            // Which currencies are in shown to the user
            currencies: ["USD","BTC"],

            // Special currency symbol artwork
            symbols: {
                "BTC": "<i class='fa fa-btc'></i>"
            },

            // Which currency we show user by the default if
            // no currency is selected
            defaultCurrency: "USD",

            // How the user is able to interact with the prices
            ux : {
                // Make everything with data-btc-price HTML attribute clickable
                clickPrices : false,

                // Build Bootstrap dropdown menu for currency switching
                menu : true,

                // Allow user to cycle through currency choices in currency:

                clickableCurrencySymbol:  false
            },

            // Allows passing the explicit jQuery version to bitcoinprices.
            // This is useful if you are using modular javascript (AMD/UMD/require()),
            // but for most normal usage you don't need this
            jQuery: jQuery,

            // Price source data attribute
            priceAttribute: "data-btc-price",

            // Price source currency for data-btc-price attribute.
            // E.g. if your shop prices are in USD
            // but converted to BTC when you do Bitcoin
            // checkout, put USD here.
            priceOrignalCurrency: "BTC"

        });
    });
</script>
 {/literal}

	
</head>

<body>
	
	
  <div class="headerContainer">
    <div class="headerInner">
      <a href="?a=home" id="logo"></a>
      <div>
        <p><b>BitCoin Price : 1 BTC = <span data-btc-price="1.0"></span></b></p>
      </div>
      <div class="mainNavRight">
        <div class="navbar">
          <div class="navbar-inner">
		  {if $userinfo.logged != 1}
		  <ul class="nav">
              <li><a href="?a=home">HOME</a></li>
              <li><a href="?a=cust&page=about">About</a></li>
              <li><a href="?a=cust&page=investment">Investment</a></li>
              <li><a href="?a=cust&page=affiliates">Affiliate</a></li>
              <li><a href="?a=news">News</a></li>
              <li><a href="?a=faq">FAQ</a></li>
              <li><a href="?a=support">Support</a></li>
                
              <li><a class="login" href="?a=login">login</a></li>
              <li><a class="register" href="?a=signup">signup</a></li>
                          </ul>
		  {else}
            <ul class="nav">
              <li><a href="?a=home">HOME</a></li>
              <li><a href="?a=cust&page=about">About</a></li>
              <li><a href="?a=cust&page=investment">Investment</a></li>
              <li><a href="?a=cust&page=affiliates">Affiliate</a></li>
              <li><a href="?a=news">News</a></li>
              <li><a href="?a=faq">FAQ</a></li>
              <li><a href="?a=support">Support</a></li>
                             <li><a class="login" href="?a=account">account</a></li>
              <li><a class="register" href="?a=logout">logout</a></li>
                          </ul>{/if}
          </div>
        </div>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
  <!-- end headerContainer -->	
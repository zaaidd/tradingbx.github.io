{include file="mheader.tpl"}

 <div class="accRight1">
            <p>Active Deposit:</p>
            <p><span>{$currency_sign}<b>{$ab_formated.active_deposit}</b></span></p>
            <div class="make-depost">
              <a href="?a=deposit">make a deposit</a>
            </div>
          </div>
          <div class="accRight1 accRight2">
            <p>Account balance:</p>
            <p><span>{$currency_sign}<b>{$ab_formated.total}</b></span></p>
            <div class="with-funds">
              <a href="?a=withdraw">Withdraw Funds</a>
            </div>
          </div>
          <div class="accRight1 accRight3 clear">
            <p>Active Deposit:</p>
            <p><span>{$currency_sign}<b>{$ab_formated.active_deposit}</b></span></p>
          </div>
          <div class="accRight1 accRight3 accRight4">
            <p>Last Investment:</p>
            <p><span>{$currency_sign}<b>{if $last_deposit}{$last_deposit}{else}N/A{/if}</b></span></p>
          </div>
          <div class="accRight1 accRight3">
            <p>Total Investment:</p>
            <p><span>{$currency_sign}<b>{$ab_formated.deposit}</b></span></p>
          </div>
          <div class="accRight1 accRight3 clear">
            <p>Earned Total:</p>
            <p><span>{$currency_sign}<b>{$ab_formated.earning}</b></span></p>
          </div>
          <div class="accRight1 accRight3 accRight4">
            <p>Withdrew Total:</p>
            <p><span>{$currency_sign}<b>{$ab_formated.withdrawal}</b></span></p>
          </div>
          <div class="accRight1 accRight3">
            <p>Last Withdrawal:</p>
            <p><span> {$currency_sign}<b>{if $last_withdrawal}{$last_withdrawal}{else}N/A{/if}</b></span></p>
          </div>
          <div class="accRight5 clear">
            <h3>your affiliate link</h3>
          </div>
          <div class="accRight6">
            <a href="{$settings.site_url}/?ref={$userinfo.username}">{$settings.site_url}/?ref={$userinfo.username} </a>
          </div>
          <a class="accRight7" href="?a=referallinks">
            <h3>view banners</h3>
          </a>


{include file="mfooter.tpl"}
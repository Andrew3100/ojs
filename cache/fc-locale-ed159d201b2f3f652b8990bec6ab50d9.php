<?php return array (
  'emails.orcidCollectAuthorId.subject' => 'ORCID ID příspěvku',
  'emails.orcidCollectAuthorId.body' => 'Vážený (á) {$authorName},<br/>
<br/>
Byl jste uveden(a) jako autor manuskriptu příspěvku do {$contextName}.<br/>
Pro potvrzení vašeho autorství přidejte, prosím, pomocí níže uvedeného odkazu, k tomuto příspěvku vaše ORCID iD.<br/>
<br/>
<a href="{$authorOrcidUrl}"><img id="orcid-id-logo" src="https://orcid.org/sites/default/files/images/orcid_16x16.png" width=\'16\' height=\'16\' alt="ORCID iD icon" style="display: block; margin: 0 .5em 0 0; padding: 0; float: left;"/>Zaregistrujte či připojte vaše ORCID iD</a><br/>
<br/>
<br>
<a href="{$orcidAboutUrl}">Více informací o ORCID najdete na {$contextName}</a><br/>
<br/>
Pokud máte jakékoliv dotazy, kontaktujte nás, prosím.<br/>
<br/>
{$principalContactSignature}<br/>
',
  'emails.orcidCollectAuthorId.description' => 'Tato šablona emailu slouží k shromažďování ORCID ID od spoluautorů.',
  'emails.orcidRequestAuthorAuthorization.description' => 'Tato šablona emailů je používána, pokud od autorů chceme umožnění přístupu k záznamům ORCID.',
  'emails.orcidRequestAuthorAuthorization.body' => 'Vážený(á) {$authorName},<br>
<br>
Byl(a) jste uveden(a) jako autor manuskriptu příspěvku "{$submissionTitle}" to {$contextName}.
<br>
<br>
Dovolte nám, prosím, přidat vaše ORCID ID k tomuto příspěvku a také přidat tento příspěvek do vašeho ORCID publikačnímu profilu.<br>
Navštivte, prosím, odkaz na oficiální webovou stránku ORCID, přihlaste se a a povolte přístup našeho časopisu dle následujících pokynů.<br>
<a href="{$authorOrcidUrl}"><img id="orcid-id-logo" src="https://orcid.org/sites/default/files/images/orcid_16x16.png" width=\'16\' height=\'16\' alt="ORCID iD icon" style="display: block; margin: 0 .5em 0 0; padding: 0; float: left;"/>Registrujte se či připojte své ORCID ID</a><br/>
<br>
<br>
<a href="{$orcidAboutUrl}">Více informací o  ORCID najdete na {$contextName}</a><br/>
<br>
Pokud máte jakékoliv dotazy, kontaktujte nás, prosím.<br>
<br>
{$principalContactSignature}<br>
',
  'emails.orcidRequestAuthorAuthorization.subject' => 'Požadavek na přístup k záznamu ORCID',
);
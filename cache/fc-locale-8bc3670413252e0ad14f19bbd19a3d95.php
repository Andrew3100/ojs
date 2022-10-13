<?php return array (
  'emails.orcidCollectAuthorId.subject' => 'Indsendelse ORCID',
  'emails.orcidCollectAuthorId.body' => 'Kære {$authorName},<br/>
<br/>
Du står opført som medforfatter til manuskriptet "{$submissionTitle}" i {$contextName}.<br/>
<br/>
For at bekræfte forfatterskabet bedes du tilføje din ORCID id til denne indsendelse ved at gå til det fremlagte link nedenfor.<br/>
<br/>
{$authorOrcidUrl}<br/>
<br/>
Har du spørgsmål bedes du kontakte mig.<br/>
<br/>
{$principalContactSignature}<br/>
',
  'emails.orcidCollectAuthorId.description' => 'Denne e-mail bruges til at indsamle ORCID id fra medforfattere.',
  'emails.orcidRequestAuthorAuthorization.description' => 'Denne e-mail-skabelon bruges til at anmode om ORCID-adgang fra forfattere.',
  'emails.orcidRequestAuthorAuthorization.body' => 'Kære {$authorName}<br>
<br>
Du er blevet opført som forfatter på manuskriptindsendelsen"{$submissionTitle}" til {$contextName}.
<br>
<br>
Tillad os at tilføje dit ORCID-id til denne indsendelse og også at tilføje indsendelsen til din ORCID-profil i forbindelse med publicering.<br>
Besøg linket til det officielle ORCID-websted, log ind med din profil og tillad adgangen ved at følge instruktionerne.<br>
<a href="{$authorOrcidUrl}"><img id="orcid-id-logo" src="https://orcid.org/sites/default/files/images/orcid_16x16.png" width=\'16\' height=\'16\' alt="ORCID iD icon" style="display: block; margin: 0 .5em 0 0; padding: 0; float: left;"/>Register or Connect your ORCID iD</a><br/>
<br>
<br>
<a href="{$orcidAboutUrl}">More about ORCID at {$contextName}</a><br/>
<br>
Hvis du har spørgsmål, så kontakt mig.<br>
<br>
{$principalContactSignature}<br>
',
  'emails.orcidRequestAuthorAuthorization.subject' => 'Anmoder om adgang til ORCID-post',
);
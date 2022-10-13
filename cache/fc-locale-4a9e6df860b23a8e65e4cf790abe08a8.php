<?php return array (
  'emails.paypalInvestigatePayment.subject' => 'Neobvyklá PayPal aktivita',
  'emails.paypalInvestigatePayment.body' => 'OJS zaznamenal neobvyklou aktivitu v souvislosti s podporou plateb přes PayPal pro časopis {$contextName}. Tato aktivita může vyžadovat další kontrolu nebo ruční zásah.<br />
                       <br />
Tento email byl vygenerován OJS pluginem pro PayPal.<br />
<br />
Kompletní informace k požadavku:<br />
{$postInfo}<br />
<br />
Doplňkové informace (pokud byly uvedeny):<br />
{$additionalInfo}<br />
<br />
Proměnné serveru:<br />
{$serverVars}<br />
',
  'emails.paypalInvestigatePayment.description' => 'Tato e-mailová šablona slouží k upozornění primárního kontaktu časopisu, že se zásuvný modul PayPal setkal s podezřelou aktivitou nebo činností vyžadující ruční zásah.',
);
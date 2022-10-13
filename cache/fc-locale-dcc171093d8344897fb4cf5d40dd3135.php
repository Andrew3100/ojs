<?php return array (
  'emails.paypalInvestigatePayment.subject' => 'Attività PayPal sospetta',
  'emails.paypalInvestigatePayment.body' => 'Open Journal Systems ha riscontrato un\'attivtà sospetta sul conto PayPal della rivista {$contextName}. Ciò può richiedere ulteriori indagini o un intervento manuale.<br />
<br />
Questa email è stata generata da Open Journal Systems\' PayPal plugin<br />
<br />
Tutte le informazioni sulla richiesta:<br />
{$postInfo}<br />
<br />
Informazioni aggiuntive (se disponibili):<br />
{$additionalInfo}<br />
<br />
Server vars:<br />
{$serverVars}<br />
',
  'emails.paypalInvestigatePayment.description' => 'Questa mail viene inviata dal plugin paypal al gestore di un journal quanto si notano delle attività sospette o c\'è bisogno di un intervento manuale.',
);
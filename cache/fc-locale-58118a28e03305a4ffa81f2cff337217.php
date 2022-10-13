<?php return array (
  'emails.manualPaymentNotification.subject' => 'Notifica di pagamento manuale',
  'emails.manualPaymentNotification.body' => 'Bisogna registrare un pagamento offline per  {$contextName}, utente {$userFullName} (username &quot;{$userName}&quot;).<br />
<br />
Il pagamento riguarda &quot;{$itemName}&quot;.<br />
Il costo è {$itemCost} ({$itemCurrencyCode}).<br />
<br />
Questa email è generata automaticamente da Open Journal Systems\' Manual Payment plugin.',
  'emails.manualPaymentNotification.description' => 'Questo template viene usato per notificare a journal manager che un pagamento manuale è stato richiesto.',
);
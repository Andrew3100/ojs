<?php return array (
  'emails.passwordResetConfirm.subject' => 'Bekræftelse af nulstilling af adgangskode',
  'emails.passwordResetConfirm.body' => 'Vi har modtaget en forespørgsel om at nulstille din adgangskode til webstedet {$siteTitle}.<br />
<br />
Hvis du ikke selv har sendt denne forespørgsel, skal du ignorere denne e-mail, og din adgangskode vil ikke blive ændret. Klik på nedenstående URL-adresse, hvis adgangskoden skal ændres.<br />
<br />
Nulstil min adgangskode: {$url}<br />
<br />
{$principalContactSignature}',
  'emails.passwordResetConfirm.description' => 'Denne e-mail sendes til registrerede brugere, når de angiver, at de har glemt deres adgangskode eller ikke kan logge på. Den indeholder en URL-adresse, de kan følge for at nulstille deres adgangskode.',
  'emails.passwordReset.subject' => 'Nulstil adgangskode',
  'emails.passwordReset.body' => 'Din adgangskode er blevet nulstillet og kan benyttes på webstedet {$siteTitle}. Opbevar brugernavnet og adgangskoden, da de er nødvendige for alt arbejde i forbindelse med tidsskriftet.<br />
<br />
Dit brugernavn: {$username}<br/>
Adgangskode: {$password}<br />
<br />
{$principalContactSignature}',
  'emails.passwordReset.description' => 'Denne e-mail sendes til registrerede brugere, når de har nulstillet deres adgangskode, efter at de har fulgt den proces, der er beskrevet i e-mailen PASSWORD_RESET_CONFIRM.',
  'emails.userRegister.subject' => 'Tidsskriftsregistrering',
  'emails.userRegister.body' => '{$userFullName}<br />
<br />
Du er nu registreret som bruger hos {$contextName}. Vi har anført dit brugernavn og din adgangskode i denne e-mail, som du skal bruge til alt arbejde i forbindelse med dette tidsskrift via tidsskriftets websted. Du kan til enhver tid bede om at blive fjernet fra tidsskriftets liste over brugere ved at kontakte mig.<br />
<br />
Brugernavn: {$username}<br />
Adgangskode: {$password}<br />
<br />
Tak. <br />
{$principalContactSignature}',
  'emails.userRegister.description' => 'Denne e-mail sendes til netop registrerede brugere for at byde dem velkommen til systemet og for at oplyse dem om deres brugernavn og adgangskode.',
  'emails.userValidate.subject' => 'Validér din konto',
  'emails.userValidate.body' => '{$userFullName}<br />
<br />
Du har oprettet en konto hos {$contextName}, men inden du kan benytte den, skal du validere din e-mail-konto. Det gør du ved blot at følge linket nedenfor:<br />
<br />
{$activateUrl}<br />
<br />
Tak. <br />
{$principalContactSignature}',
  'emails.userValidate.description' => 'Denne e-mail sendes til en nyligt registreret bruger for at få vedkommende til at validere deres e-mail-konto.',
  'emails.reviewerRegister.subject' => 'Registrering som bedømmer hos {$contextName}',
  'emails.reviewerRegister.body' => 'På baggrund af din ekspertise har vi taget den frihed at registrere dit navn i bedømmerdatabasen for {$contextName}. Dette stiller ikke krav om nogen form for engagement fra din side, men gør det blot muligt for os at kontakte dig med hensyn til en eventuelt bedømmelse af et manuskript. Hvis du inviteres til at foretage en bedømmelse, vil du have mulighed for at se titlen på og et resumé af det pågældende manuskript, og du vil altid kunne acceptere eller afvise invitationen. Du kan til enhver tid også bede om at få dit navn fjernet fra listen over bedømmere.<br />
<br />
Vi giver dig et brugernavn og en adgangskode, der skal bruges i forbindelse med alle interaktioner med tidsskriftet via tidsskriftets webside. Du kan f.eks. bede om at få opdateret din profil, herunder dine bedømmelsesinteresser.<br />
<br />
Brugernavn: {$username}<br />
Adgangskode: {$password}<br />
<br />
Tak. <br />
{$principalContactSignature}',
  'emails.reviewerRegister.description' => 'Denne e-mail sendes til netop registrerede bedømmere for at byde dem velkommen til systemet og for at oplyse dem om deres brugernavn og adgangskode.',
  'emails.publishNotify.subject' => 'Nyt nummer er blevet publiceret',
  'emails.publishNotify.body' => 'Læsere:<br />
<br />
{$contextName} har lige publiceret det seneste nummer på {$contextUrl}. Vi inviterer dig til at gennemse indholdsfortegnelsen her og derefter besøge vores websted, hvor du kan gennemse artikler og materiale, der har din interesse.<br />
<br />
Tak for din fortsatte interesse i vores arbejde.<br />
{$editorialContactSignature}',
  'emails.publishNotify.description' => 'Denne e-mail sendes til registrerede læsere via linket "Underret brugere" på redaktørens brugerstartside. Den underretter læsere om en ny udgave og inviterer dem til at besøge tidsskriftet på en angiven URL-adresse.',
  'emails.lockssExistingArchive.subject' => 'Forespørgsel om arkivering af {$contextName}',
  'emails.lockssExistingArchive.body' => 'Kære [universitetsbibliotekar]<br />
<br />
{$contextName} &amp;lt;{$contextUrl}&amp;gt; er et tidsskrift, hvor et medlem af dit fakultet, [navn på medlem], fungerer som [stillingsbetegnelse]. Tidsskriftet forsøger at etablere et LOCKSS-kompatibelt (Lots of Copies Keep Stuff Safe) arkiv med dette og andre universitetsbiblioteker.<br />
<br />
[Kort beskrivelse af tidsskrift]<br />
<br />
URL-adressen til LOCKSS Publisher Manifest for vores tidsskrift er: {$contextUrl}/gateway/lockss<br />
<br />
Vi er klar over, at du allerede deltager i LOCKSS. Hvis vi kan stå til rådighed med yderligere metadata med henblik på at få vores tidsskrift registreret med din version af LOCKSS, gør vi gerne dette.<br />
<br />
Tak.<br />
{$principalContactSignature}',
  'emails.lockssExistingArchive.description' => 'Denne e-mail anmoder den ansvarlige for et LOCKSS-arkiv om at overveje at inkludere dette tidsskrift i deres arkiv. Den indeholder URL-adressen til tidsskriftets LOCKSS Publisher Manifest.',
  'emails.lockssNewArchive.subject' => 'Forespørgsel om arkivering af {$contextName}',
  'emails.lockssNewArchive.body' => 'Kære [universitetsbibliotekar]<br />
<br />
{$contextName} &amp;lt;{$contextUrl}&amp;gt; er et tidsskrift, hvor et medlem af dit fakultet, [navn på medlem], fungerer som [stillingsbetegnelse]. Tidsskriftet forsøger at etablere et LOCKSS-kompatibelt (Lots of Copies Keep Stuff Safe) arkiv med dette og andre universitetsbiblioteker.<br />
<br />
[Kort beskrivelse af tidsskrift]<br />
<br />
LOCKSS-programmet &amp;lt;http://lockss.org/&amp;gt;, der er et internationalt biblioteks-/forlagsinitiativ, er et velfungerende eksempel på et distribueret bevarings- og arkiveringslager. Der findes flere oplysninger nedenfor. Softwaren, som kører på almindelige pc\'er, er gratis. Det er nemt at få systemet til at køre online, og den løbende vedligeholdelse af systemet er meget begrænset.<br />
<br />
Med henblik på at få hjælp til arkivering af vores tidsskrift inviterer vi dig til at blive medlem af LOCKSS-programmet, hvor du skal hjælpe med at indsamle og bevare titler, der er produceret af dit fakultet og af andre videnskabsmænd rundt om i verden. Det gør du ved at få en af dine medarbejdere til at besøge LOCKSS-webstedet, hvor der findes oplysninger om, hvordan systemet fungerer. Jeg ser frem til at høre, om du har mulighed for at yde denne arkiveringssupport for dette tidsskrift.<br />
<br />
Tak.<br />
{$principalContactSignature}',
  'emails.lockssNewArchive.description' => 'Denne e-mail opfordrer modtageren til at deltage i LOCKSS-initiativet og inkludere dette tidsskrift i arkivet. Den indeholder oplysninger om LOCKSS-initiativet og om måder, hvorpå du kan deltage.',
  'emails.submissionAck.subject' => 'Bekræftelse af indsendelse',
  'emails.submissionAck.body' => '{$authorName}:<br />
<br />
Tak, fordi du har fremsendt manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Ved hjælp af det online-tidsskriftsstyringssystem, vi bruger, kan du følge manuskriptet igennem den redaktionelle proces ved at logge på tidsskriftets websted:<br />
<br />
Manuskriptets URL-adresse: {$submissionUrl}<br />
Brugernavn: {$authorUsername}<br />
<br />
Hvis du har spørgsmål, er du velkommen til at kontakte mig. Tak, fordi du har valgt at publicere din artikel i dette tidsskrift.<br />
<br />
{$editorialContactSignature}',
  'emails.submissionAck.description' => 'Når denne e-mail er aktiveret, bliver den automatisk sendt til en forfatter, når vedkommende har indsendt et manuskript til tidsskriftet. Den indeholder oplysninger om, hvordan forfatteren kan følge manuskriptet igennem processen, og den takker forfatteren for manuskriptet.',
  'emails.submissionUnsuitable.subject' => 'Uegnet manuskript',
  'emails.submissionUnsuitable.body' => '{$authorName}:<br />
<br />
En indledende bedømmelse af &quot;{$submissionTitle}&quot; viser, at dette manuskript ikke stemmer overens med {$contextName}\'s område og fokus. Jeg anbefaler, at du læser beskrivelsen af dette tidsskrift under Om samt dets aktuelle indhold for at få mere at vide om de artikler, vi publicerer. Du kan også overveje at sende manuskriptet til et andet og mere velegnet tidsskrift.<br />
<br />
{$editorialContactSignature}',
  'emails.submissionUnsuitable.description' => '',
  'emails.submissionComment.subject' => 'Kommentar til manuskript',
  'emails.submissionComment.body' => '{$name}:<br />
<br />
{$commentName} har føjet en kommentar til manuskriptet &quot;{$submissionTitle}&quot; i {$contextName}:<br />
<br />
{$comments}',
  'emails.submissionComment.description' => 'Denne e-mail underretter de personer, der er involveret i et manuskripts redigeringsproces, om, at der er sendt en ny kommentar.',
  'emails.submissionDecisionReviewers.subject' => 'Beslutning om "{$submissionTitle}"',
  'emails.submissionDecisionReviewers.body' => 'Da du er en af bedømmerne af manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}, sender jeg dig de bedømmelser og den redaktionelle beslutning, der er sendt til forfatteren af manuskriptet. Vi takker dig endnu en gang for dit vigtige bidrag til denne proces.<br />
 <br />
{$editorialContactSignature}<br />
<br />
{$comments}',
  'emails.submissionDecisionReviewers.description' => 'Denne e-mail underretter bedømmerne af et manuskript om, at bedømmelsesprocessen er fuldført. Den indeholder oplysninger om artiklen og om den vedtagne beslutning og takker bedømmerne for deres bidrag.',
  'emails.editorAssign.subject' => 'Redaktionel tildeling',
  'emails.editorAssign.body' => '{$editorialContactName}:<br />
<br />
Som sektionsredaktør har du fået tildelt manuskriptet &quot;{$submissionTitle}&quot;, der er sendt til {$contextName}, og som du skal følge igennem den redaktionelle proces. <br />
<br />
Manuskriptets URL-adresse: {$submissionUrl}<br />
Brugernavn: {$editorUsername}<br />
<br />
Tak.',
  'emails.editorAssign.description' => 'Denne e-mail underretter en sektionsredaktør om, at redaktøren har tildelt vedkommende opgaven med at følge et manuskript igennem redigeringsprocessen. Den indeholder oplysninger om manuskriptet og om, hvordan der oprettes adgang til tidsskriftets websted.',
  'emails.reviewRequestRemindAuto.subject' => 'Påmindelse om anmodning om bedømmelse af artikel',
  'emails.reviewRequestRemindAuto.body' => '{$reviewerName}:<br />
Dette er blot for at minde dig om vores forespørgsel om din bedømmelse af manuskriptet &quot;{$submissionTitle},&quot; for {$contextName}. Vi havde håbet på at modtage dit svar senest den {$responseDueDate}, og denne e-mail er blevet automatisk genereret og sendt til dig, da den pågældende dato er overskredet.
<br />
Jeg tror, at du vil være en fremragende bedømmer af manuskriptet. Nedenfor finder du et resumé af manuskriptet, og jeg håber, at du vil overveje at påtage dig denne vigtige opgave for os.<br />
<br />
Log på tidsskriftets websted for at angive, om du vil påtage dig bedømmelsen eller ej, samt for at få adgang til manuskriptet og registrere din bedømmelse og anbefaling. Webstedet er {$contextUrl}<br />
<br />
Selve bedømmelsen skal afleveres senest den {$reviewDueDate}.<br />
<br />
Hvis du ikke har dit brugernavn og din adgangskode til tidsskriftets websted, kan du bruge dette link til at ændre adgangskoden (som så vil blive sendt til dig via e-mail sammen med dit brugernavn). {$passwordResetUrl}<br />
<br />
Manuskriptets URL-adresse: {$submissionReviewUrl}<br />
<br />
Tak for din overvejelse af denne forespørgsel.<br />
<br />
{$editorialContactSignature}<br />
<br />
&quot;{$submissionTitle}&quot;<br />
<br />
{$submissionAbstract}',
  'emails.reviewRequestRemindAuto.description' => 'Denne e-mail sendes automatisk når en bedømmers bekræftelsesdato er overskredet (se bedømmelsesindstillinger under Indstillinger > Workflow > Bedømmelse) og ’Aktiver adgang for bedømmere ved hjælp af ét klik’ er fravalgt. Tidsfrister og påmindelser skal være defineret.',
  'emails.reviewRequestRemindAutoOneclick.subject' => 'Forespørgsel om bedømmelse af artikel',
  'emails.reviewRequestRemindAutoOneclick.body' => '{$reviewerName}:<br />
Dette er blot for at minde dig om vores forespørgsel om din bedømmelse af manuskriptet &quot;{$submissionTitle},&quot; for {$contextName}. Vi havde håbet på at modtage dit svar senest den {$responseDueDate}, og denne e-mail er blevet automatisk genereret og sendt til dig, da den pågældende dato er overskredet.
<br />
Jeg tror, at du vil være en fremragende bedømmer af manuskriptet. Nedenfor finder du et resumé af manuskriptet, og jeg håber, at du vil overveje at påtage dig denne vigtige opgave for os.<br />
<br />
Log på tidsskriftets websted for at angive, om du vil påtage dig bedømmelsen eller ej, samt for at få adgang til manuskriptet og registrere din bedømmelse og anbefaling.<br />
<br />
Selve bedømmelsen skal afleveres senest den {$reviewDueDate}.<br />
<br />
Manuskriptets URL-adresse: {$submissionReviewUrl}<br />
<br />
Tak for din overvejelse af denne forespørgsel.<br />
<br />
{$editorialContactSignature}<br />
<br />
&quot;{$submissionTitle}&quot;<br />
<br />
{$submissionAbstract}',
  'emails.reviewRequestRemindAutoOneclick.description' => 'Denne e-mail sendes automatisk når en bedømmers bekræftelsesdato er overskredet (se bedømmelsesindstillinger under Indstillinger > Workflow > Bedømmelse) og ’Aktiver adgang for bedømmere ved hjælp af ét klik’ er aktiveret. Tidsfrister og påmindelser skal være defineret.',
  'emails.reviewRequest.subject' => 'Forespørgsel om bedømmelse af artikel',
  'emails.reviewRequest.body' => '{$reviewerName}:<br />
<br />
Jeg tror, at du vil være en fremragende bedømmer af manuskriptet &quot;{$submissionTitle}&quot;, der er blevet sendt til {$contextName}. Nedenfor finder du et resumé af manuskriptet, og jeg håber, at du vil overveje at påtage dig denne vigtige opgave for os.<br />
<br />
Log på tidsskriftets websted inden den {$responseDueDate} for at angive, om du vil påtage dig bedømmelsen eller ej, samt for at få adgang til manuskriptet og registrere din bedømmelse og anbefaling. Webstedet er {$contextUrl}<br />
<br />
Selve bedømmelsen skal afleveres senest den {$reviewDueDate}.<br />
<br />
Hvis du ikke har dit brugernavn og din adgangskode til tidsskriftets websted, kan du bruge dette link til at nulstille adgangskoden (som så vil blive sendt til dig via e-mail sammen med dit brugernavn). {$passwordResetUrl}<br />
<br />
Manuskriptets URL-adresse: {$submissionReviewUrl}<br />
<br />
Tak for din overvejelse af denne forespørgsel.<br />
<br />
{$editorialContactSignature}<br />
<br />
&quot;{$submissionTitle}&quot;<br />
<br />
 {$submissionAbstract}',
  'emails.reviewRequest.description' => 'Denne e-mail fra sektionsredaktøren til en bedømmer anmoder bedømmeren om at acceptere eller afvise at bedømme et manuskript. Den indeholder oplysninger om manuskriptet, f.eks. titel og resumé, forfaldsdato for bedømmelse, samt hvordan der kan oprettes adgang til selve manuskriptet. Denne meddelelse benyttes, hvis indstillingen Standardbedømmelsesproces er valgt under Konfiguration af tidsskrift, trin 2. (Se ellers REVIEW_REQUEST_ATTACHED.)',
  'emails.reviewRequestOneclick.subject' => 'Forespørgsel om bedømmelse af artikel',
  'emails.reviewRequestOneclick.body' => '{$reviewerName}:<br />
<br />
Jeg tror, at du vil være en fremragende bedømmer af manuskriptet &quot;{$submissionTitle}&quot;, der er blevet sendt til {$contextName}. Nedenfor finder du et resumé af manuskriptet, og jeg håber, at du vil overveje at påtage dig denne vigtige opgave for os.<br />
<br />
Log på tidsskriftets websted inden den {$responseDueDate} for at angive, om du vil påtage dig bedømmelsen eller ej, samt for at få adgang til manuskriptet og registrere din bedømmelse og anbefaling.<br />
<br />
Selve bedømmelsen skal afleveres senest den {$reviewDueDate}.<br />
<br />
Manuskriptets URL-adresse: {$submissionReviewUrl}<br />
<br />
Tak for din overvejelse af denne forespørgsel.<br />
<br />
{$editorialContactSignature}<br />
<br />
&quot;{$submissionTitle}&quot;<br />
<br />
 {$submissionAbstract}',
  'emails.reviewRequestOneclick.description' => 'Denne e-mail fra sektionsredaktøren til en bedømmer anmoder bedømmeren om at acceptere eller afvise at bedømme et manuskript. Den indeholder oplysninger om manuskriptet, f.eks. titel og resumé, forfaldsdato for bedømmelse, samt hvordan der kan oprettes adgang til selve manuskriptet. Denne meddelelse benyttes, hvis indstillingen \'Standardbedømmelsesproces\' er valgt under konfiguration af tidsskrift, Indstillinger > Workflow > Bedømmelse og adgang for bedømmere ved hjælp af ét klik er aktiveret.',
  'emails.reviewRequestAttached.subject' => 'Forespørgsel om bedømmelse af artikel',
  'emails.reviewRequestAttached.body' => '{$reviewerName}:<br />
<br />
Jeg tror, at du vil kunne være en fremragende bedømmer af manuskriptet &quot;{$submissionTitle}&quot;, og jeg beder dig om at overveje at påtage dig denne vigtige opgave for os. Dette tidsskrifts Retningslinjer for bedømmelser er angivet nedenfor, og manuskriptet er vedhæftet denne e-mail. Din bedømmelse af manuskriptet samt din anbefaling skal sendes til mig pr. e-mail senest den {$reviewDueDate}.<br />
<br />
Meld venligst tilbage via e-mail inden den {$responseDueDate}, om du kan og er villig til at foretage bedømmelsen.<br />
<br />
Tak for din overvejelse af denne forespørgsel.<br />
<br />
{$editorialContactSignature}<br />
<br />
<br />
Retningslinjer for bedømmelser<br />
<br />
{$reviewGuidelines}<br />
',
  'emails.reviewRequestAttached.description' => 'Denne e-mail sendes af sektionsredaktøren til en bedømmer og beder vedkommende om at acceptere eller afvise at bedømme et manuskript. Manuskriptet er vedhæftet denne e-mail. Denne meddelelse benyttes, hvis indstillingen Bedømmelsesproces, hvor manuskript er vedhæftet e-mail, er valgt under konfiguration af tidsskrift, Indstillinger > Workflow > Bedømmelse. (Se ellers REVIEW_REQUEST.)',
  'emails.reviewCancel.subject' => 'Annullering af forespørgsel om bedømmelse',
  'emails.reviewCancel.body' => '{$reviewerName}:<br />
<br />
På nuværende tidspunkt har vi valgt at annullere vores forespørgsel til dig om at bedømme manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Vi beklager den ulejlighed, dette eventuelt måtte forårsage, og vi håber, at vi må henvende os til dig i fremtiden og bede om din assistance i forbindelse med dette tidsskrifts bedømmelsesproces.<br />
<br />
Hvis du har spørgsmål, er du velkommen til at kontakte mig.',
  'emails.reviewCancel.description' => 'Denne e-mail sendes af sektionsredaktøren til en bedømmer, som er ved at bedømme et manuskript, og underretter vedkommende om, at bedømmelsen er blevet annulleret.',
  'emails.reviewConfirm.subject' => 'Kan foretage bedømmelse',
  'emails.reviewConfirm.body' => 'Redaktører:<br />
<br />
Jeg kan og er villig til at bedømme manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Tak, fordi du tænkte på mig, og jeg planlægger at være færdig med bedømmelsen senest på forfaldsdatoen, {$reviewDueDate}, hvis ikke før.<br />
<br />
{$reviewerName}',
  'emails.reviewConfirm.description' => 'Denne e-mail sendes af en bedømmer til sektionsredaktøren som svar på en bedømmelsesforespørgsel og underretter sektionsredaktøren om, at bedømmelsesforespørgslen er blevet accepteret, og at bedømmelsen vil være fuldført til den angivne dato.',
  'emails.reviewDecline.subject' => 'Kan ikke foretage bedømmelse',
  'emails.reviewDecline.body' => 'Redaktører:<br />
<br />
Jeg beklager, at jeg på nuværende tidspunkt ikke kan bedømme manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Tak, fordi du tænkte på mig, og du er altid velkommen til at kontakte mig en anden gang.<br />
<br />
{$reviewerName}',
  'emails.reviewDecline.description' => 'Denne e-mail sendes af en bedømmer til sektionsredaktøren som svar på en bedømmelsesforespørgsel og underretter sektionsredaktøren om, at bedømmelsesforespørgslen er blevet afvist.',
  'emails.reviewAck.subject' => 'Bekræftelse af bedømmelse af artikel',
  'emails.reviewAck.body' => '{$reviewerName}:<br />
<br />
Tak, fordi du har fuldført bedømmelsen af manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Vi påskønner dit bidrag til kvaliteten af de artikler, vi publicerer.',
  'emails.reviewAck.description' => 'Denne e-mail sendes af sektionsredaktøren for at bekræfte modtagelsen af en fuldført bedømmelse og takker bedømmeren for sit bidrag.',
  'emails.reviewRemind.subject' => 'Påmindelse om bedømmelse af manuskript',
  'emails.reviewRemind.body' => '{$reviewerName}:<br />
<br />
Dette er blot for at minde dig om vores forespørgsel om din bedømmelse af manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Vi havde håbet på at modtage bedømmelsen senest den {$reviewDueDate} og ser frem til at modtage den, så snart du er færdig med den.<br />
<br />
Hvis du ikke har dit brugernavn og din adgangskode til tidsskriftets websted, kan du bruge dette link til at nulstille adgangskoden (som så vil blive sendt til dig via e-mail sammen med dit brugernavn). {$passwordResetUrl}<br />
<br />
Manuskriptets URL-adresse: {$submissionReviewUrl}<br />
<br />
Vi beder dig bekræfte, at du er i stand til at fuldføre dette vigtige bidrag til tidsskriftets arbejde. Jeg ser frem til at høre fra dig.<br />
<br />
{$editorialContactSignature}',
  'emails.reviewRemind.description' => 'Denne e-mail sendes af sektionsredaktøren til en bedømmer for at minde vedkommende om, at bedømmelsen skulle have været afleveret.',
  'emails.reviewRemindOneclick.subject' => 'Påmindelse om bedømmelse af manuskript',
  'emails.reviewRemindOneclick.body' => '{$reviewerName}:<br />
<br />
Dette er blot for at minde dig om vores forespørgsel om din bedømmelse af manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Vi havde håbet på at modtage bedømmelsen senest den {$reviewDueDate} og ser frem til at modtage den, så snart du er færdig med den.<br />
<br />
Manuskriptets URL-adresse: {$submissionReviewUrl}<br />
<br />
Vi beder dig bekræfte, at du er i stand til at fuldføre dette vigtige bidrag til tidsskriftets arbejde. Jeg ser frem til at høre fra dig.<br />
<br />
{$editorialContactSignature}',
  'emails.reviewRemindOneclick.description' => 'Denne e-mail sendes af sektionsredaktøren til en bedømmer for at minde vedkommende om, at bedømmelsen skulle have været afleveret.',
  'emails.reviewRemindAuto.subject' => 'Automatisk påmindelse om bedømmelse af manuskript',
  'emails.reviewRemindAuto.body' => '{$reviewerName}:<br />
<br />
Dette er blot for at minde dig om vores forespørgsel om din bedømmelse af manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Vi havde håbet på at modtage bedømmelsen senest den {$reviewDueDate}, og denne e-mail er blevet automatisk genereret og sendt til dig, da den pågældende dato er overskredet. Vi ser stadig frem til at modtage den, så snart du er færdig med den.<br />
<br />
Hvis du ikke har dit brugernavn og din adgangskode til tidsskriftets websted, kan du bruge dette link til at nulstille adgangskoden (som så vil blive sendt til dig via e-mail sammen med dit brugernavn). {$passwordResetUrl}<br />
<br />
Manuskriptets URL-adresse: {$submissionReviewUrl}<br />
<br />
Vi beder dig bekræfte, at du er i stand til at fuldføre dette vigtige bidrag til tidsskriftets arbejde. Jeg ser frem til at høre fra dig.<br />
<br />
{$editorialContactSignature}',
  'emails.reviewRemindAuto.description' => 'Denne e-mail sendes automatisk, når en bedømmers forfaldsdato overskrides (se Bedømmelsesindstillinger under Indstillinger> Workflow > Bedømmelse), og når adgang for bedømmere ved hjælp af ét klik er deaktiveret. Planlagte opgaver skal aktiveres og konfigureres (se webstedets konfigurationsfil).',
  'emails.reviewRemindAutoOneclick.subject' => 'Automatisk påmindelse om bedømmelse af manuskript',
  'emails.reviewRemindAutoOneclick.body' => '{$reviewerName}:<br />
<br />
Dette er blot for at minde dig om vores forespørgsel om din bedømmelse af manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Vi havde håbet på at modtage bedømmelsen senest den {$reviewDueDate}, og denne e-mail er blevet automatisk genereret og sendt til dig, da den pågældende dato er overskredet. Vi ser stadig frem til at modtage den, så snart du er færdig med den.<br />
<br />
Manuskriptets URL-adresse: {$submissionReviewUrl}<br />
<br />
Vi beder dig bekræfte, at du er i stand til at fuldføre dette vigtige bidrag til tidsskriftets arbejde. Jeg ser frem til at høre fra dig.<br />
<br />
{$editorialContactSignature}',
  'emails.reviewRemindAutoOneclick.description' => 'Denne e-mail sendes automatisk, når en bedømmers forfaldsdato overskrides (se Bedømmelsesindstillinger under Indstillinger > Workflow > Bedømmelse), og når adgang for bedømmere ved hjælp af ét klik er aktiveret. Planlagte opgaver skal aktiveres og konfigureres (se webstedets konfigurationsfil).',
  'emails.copyeditRequest.subject' => 'Forespørgsel om manuskriptredigering',
  'emails.copyeditRequest.body' => '{$participantName}:<br />
<br />
Jeg vil bede dig om at foretage manuskriptredigering af &quot;{$submissionTitle}&quot; til {$contextName} ved at følge disse trin. <br />
1. Klik på manuskriptets URL-adresse nedenfor. <br />
2. Åbn tilgængelig(e) fil(er) under ‘Filer til redigering’ og tilføj, om nødvendigt, et indlæg under ‘Drøftelser under manuskriptredigering’.<br />
3. Gem manuskriptredigeret fil og upload den ud for ‘Manuskriptredigering’.<br />
4. Giv redaktøren besked, når alle filer er færdigredigerede og klar til blive videresendt til ’Produktion’.<br />
<br />
{$contextName} URL: {$contextUrl}<br />
Submission URL: {$submissionUrl}<br />
Username: {$participantUsername}',
  'emails.copyeditRequest.description' => 'Denne e-mail sendes af en sektionsredaktør til manuskriptredaktøren for et manuskript og beder vedkommende om at påbegynde manuskriptredigeringsprocessen. Den indeholder oplysninger om manuskriptet og om, hvordan der oprettes adgang til det.',
  'emails.layoutRequest.subject' => 'Forespørgsel om publiceringsversion',
  'emails.layoutRequest.body' => '{$participantName}:<br />
<br />
Indsendelsen &quot;{$submissionTitle}&quot; til {$contextName} skal nu gøres publiceringsklar ved at følge disse trin.<br />
1. Klik på manuskriptets URL-adresse nedenfor.<br />
2. Hent filerne placeret under ‘Produktionsklare filer’ og formater dem til publiceringsklare filer i overensstemmelse med tidsskriftets krav.<br />
3. Upload de publiceringsklare filer via linket ‘Tilføj publiceringsversion’.<br />
4. Giv redaktøren besked når publiceringsversionen er klar via linket ‘Tilføj indlæg’ under ‘Drøftelser under produktion’.<br />
<br />
{$contextName} URL: {$contextUrl}<br />
Submission URL: {$submissionUrl}<br />
Username: {$participantUsername}<br />
<br />
Hvis du ikke er i stand til at påtage dig dette arbejde på nuværende tidspunkt eller har spørgsmål, bedes du kontakte mig. Tak for dit bidrag til dette tidsskrift.',
  'emails.layoutRequest.description' => 'Denne e-mail fra sektionsredaktøren til layoutredaktøren underretter layoutredaktøren om, at han/hun har fået til opgave at foretage layoutredigering af et manuskript. Den indeholder oplysninger om manuskriptet og om, hvordan der oprettes adgang til det.',
  'emails.layoutComplete.subject' => 'Publiceringsversion færdiggjort',
  'emails.layoutComplete.body' => '{$editorialContactName}:<br />
<br />
Der er nu indsat en publiceringsklar fil til manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}, og den er klar til korrekturlæsning. <br />
<br />
Hvis du har spørgsmål, er du velkommen til at kontakte mig.<br />
<br />
{$participantName}',
  'emails.layoutComplete.description' => 'Denne e-mail fra layoutredaktøren til sektionsredaktøren underretter sektionsredaktøren om, at layoutprocessen er fuldført.',
  'emails.layoutAck.subject' => 'Bekræftelse af layout',
  'emails.layoutAck.body' => '{$participantName}:<br />
<br />
Tak, fordi du har oprettet satsskibene for manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Dette er et vigtigt bidrag til publiceringsprocessen.<br />
<br />
{$editorialContactSignature}',
  'emails.layoutAck.description' => 'I denne e-mail fra sektionsredaktøren til layoutredaktøren bekræftes fuldførelsen af layoutredigeringsprocessen, og sektionsredaktøren takker layouttredaktøren for sit bidrag.',
  'emails.proofreadAuthorRequest.subject' => 'Forespørgsel om korrekturlæsning (forfatter)',
  'emails.proofreadAuthorRequest.body' => '{$authorName}:<br />
<br />
Dit manuskript &quot;{$submissionTitle}&quot; til {$contextName} skal nu korrekturlæses ved at følge disse trin. 1. Klik på manuskriptets URL-adresse nedenfor. 2. Log på tidsskriftet, og få vist INSTRUKTIONER TIL KORREKTURLÆSNING 3. Klik på VIS KORREKTUR under Layout, og læs korrektur på satsskibet i det eller de anvendte formater. 4. Angiv rettelser (typografiske og formateringsmæssige) under Korrekturrettelser. 5. Gem og send rettelserne via e-mail til layoutredaktøren og korrekturlæseren. 6. Send e-mailen under UDFØR til redaktøren.<br />
<br />
Manuskriptets URL-adresse: {$submissionUrl}
<br />
{$editorialContactSignature}',
  'emails.proofreadAuthorRequest.description' => 'Denne e-mail fra sektionsredaktøren til forfatteren underretter forfatteren om, at en artikels satsskibe er klar til korrekturlæsning. Den indeholder oplysninger om artiklen og om, hvordan der oprettes adgang til den.',
  'emails.proofreadAuthorComplete.subject' => 'Korrekturlæsningen er fuldført (forfatter)',
  'emails.proofreadAuthorComplete.body' => '{$editorialContactName}:<br />
<br />
Jeg har fuldført korrekturlæsningen af satsskibene for mit manuskript, &quot;{$submissionTitle}&quot;, til {$contextName}. Satsskibene er nu klar til, at korrekturlæseren og layoutredaktøren foretager de sidste rettelser til dem.<br />
<br />
{$authorName}',
  'emails.proofreadAuthorComplete.description' => 'Denne e-mail fra forfatteren til korrekturlæseren og redaktøren underretter dem om, at forfatterens korrekturlæsningsrunde er fuldført, og at detaljerne findes i kommentarerne til artiklen.',
  'emails.proofreadAuthorAck.subject' => 'Bekræftelse af korrekturlæsning (forfatter)',
  'emails.proofreadAuthorAck.body' => '{$authorName}:<br />
<br />
Tak, fordi du har læst korrektur på satsskibene for dit manuskript, &quot;{$submissionTitle}&quot;, i {$contextName}. Vi ser frem til at publicere din artikel i løbet af kort tid.<br />
<br />
Hvis du abonnerer på vores meddelelsestjeneste, modtager du en e-mail med indholdsfortegnelsen, så snart artiklen er publiceret. Hvis du har spørgsmål, er du velkommen til at kontakte mig.<br />
<br />
{$editorialContactSignature}',
  'emails.proofreadAuthorAck.description' => 'I denne e-mail fra sektionsredaktøren til forfatteren bekræftes fuldførelsen af den første korrekturlæsningsproces, og sektionsredaktøren takker forfatteren for sit bidrag.',
  'emails.proofreadRequest.subject' => 'Forespørgsel om korrekturlæsning',
  'emails.proofreadRequest.body' => '{$proofreaderName}:<br />
<br />
Manuskriptet &quot;{$submissionTitle}&quot; til {$contextName} skal nu korrekturlæses ved at følge disse trin. 1. Klik på manuskriptets URL-adresse nedenfor. 2. Log på tidsskriftet, og få vist INSTRUKTIONER TIL KORREKTURLÆSNING. 3. Klik på VIS KORREKTUR under Layout, og læs korrektur på satsskibet i det eller de anvendte formater. 4. Angiv rettelser (typografiske og formateringsmæssige) under Korrekturrettelser. 5. Gem og send rettelserne via e-mail til layoutredaktøren. 6. Send e-mailen under UDFØR til redaktøren.<br />
<br />
Manuskriptets URL-adresse: {$submissionUrl} Brugernavn: {$proofreaderUsername}<br />
<br />
Hvis du ikke er i stand til at påtage dig dette arbejde på nuværende tidspunkt eller har spørgsmål, bedes du kontakte mig.<br />
 Tak for dit bidrag til dette tidsskrift.<br />
{$editorialContactSignature}',
  'emails.proofreadRequest.description' => 'I denne e-mail fra sektionsredaktøren til korrekturlæseren bliver korrekturlæseren bedt om at læse korrektur på en artikels satsskibe. Den indeholder oplysninger om artiklen og om, hvordan der oprettes adgang til den.',
  'emails.proofreadComplete.subject' => 'Korrekturlæsningen er fuldført',
  'emails.proofreadComplete.body' => '{$editorialContactName}:<br />
<br />
Jeg har fuldført korrekturlæsningen af satsskibene for manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Satsskibene er nu klar til, at layoutredaktøren foretager de sidste rettelser til dem.<br />
<br />
{$proofreaderName}',
  'emails.proofreadComplete.description' => 'Denne e-mail fra korrekturlæseren til sektionsredaktøren underretter sektionsredaktøren om, at korrekturlæseren har fuldført korrekturlæsningsprocessen.',
  'emails.proofreadAck.subject' => 'Bekræftelse af korrekturlæsning',
  'emails.proofreadAck.body' => '{$proofreaderName}:<br />
<br />
Tak, fordi du har læst korrektur på satsskibene for manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Dette arbejde har stor betydning for kvaliteten af dette tidsskrift.<br />
<br />
{$editorialContactSignature}',
  'emails.proofreadAck.description' => 'I denne e-mail fra sektionsredaktøren til korrekturlæseren bekræftes fuldførelsen af korrekturlæserens korrekturlæsningsproces, og sektionsredaktøren takker korrekturlæseren for sit bidrag.',
  'emails.proofreadLayoutComplete.subject' => 'Korrekturlæsningen er fuldført (layoutredaktør)',
  'emails.proofreadLayoutComplete.body' => '{$editorialContactName}:<br />
<br />
Satsskibene er nu blevet rettet, efter korrekturlæsning af dem, for manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Artiklen er nu klar til at blive publiceret.<br />
<br />
{$participantName}',
  'emails.proofreadLayoutComplete.description' => 'Denne e-mail fra layoutredaktøren til sektionsredaktøren underretter sektionsredaktøren om, at den sidste korrekturlæsningsfase er fuldført, og at artiklen nu er klar til at blive publiceret.',
  'emails.proofreadLayoutAck.subject' => 'Bekræftelse af korrekturlæsning (layoutredaktør)',
  'emails.proofreadLayoutAck.body' => '{$participantName}:<br />
<br />
Tak, fordi du har indført korrekturrettelserne i de satsskibe, der er tilknyttet manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Dette er et vigtigt bidrag til arbejdet i forbindelse med dette tidsskrift.<br />
<br />
{$editorialContactSignature}',
  'emails.proofreadLayoutAck.description' => 'I denne e-mail fra sektionsredaktøren til layoutredaktøren bekræftes fuldførelsen af den sidste korrekturlæsningsfase, og sektionsredaktøren takker layoutredaktøren for sit bidrag.',
  'emails.emailLink.subject' => 'Artikel, der muligvis har din interesse',
  'emails.emailLink.body' => 'Jeg tænkte, at du måske ville være interesseret i at læse &quot;{$submissionTitle}&quot; af {$authorName}, der er publiceret i Årg. {$volume}, Nr. {$number} ({$year}) i {$contextName} på &quot;{$articleUrl}&quot;.',
  'emails.emailLink.description' => 'Denne e-mail-skabelon giver en registreret læser mulighed for at sende oplysninger om en artikel til en person, der muligvis er interesseret. Den er tilgængelig via læseværktøjerne og skal aktiveres af tidsskriftschefen på siden Administration af læseværktøjer.',
  'emails.subscriptionNotify.subject' => 'Abonnementsmeddelelse',
  'emails.subscriptionNotify.body' => '{$subscriberName}:<br />
<br />
Du er nu registreret i vores onlinetidsskriftsstyringssystem som abonnent på {$contextName} med følgende abonnement:<br />
<br />
{$subscriptionType}<br />
<br />
Log på systemet med dit brugernavn, &quot;{$username}&quot;, for at få adgang til indhold, der kun er tilgængeligt for abonnenter.<br />
<br />
Når du har logget på systemet, kan du på et hvilket som helst tidspunkt ændre dine profiloplysninger og din adgangskode.<br />
<br />
Vær opmærksom på, at hvis du har et institutionsabonnement, behøver brugerne i institutionen ikke logge på, da forespørgsler på abonnementsindhold automatisk godkendes af systemet.<br />
<br />
Hvis du har spørgsmål, er du velkommen til at kontakte mig.<br />
<br />
{$subscriptionContactSignature}',
  'emails.subscriptionNotify.description' => 'Denne e-mail underretter en registreret læser om, at abonnementschefen har oprettet et abonnement til dem. Den indeholder tidsskriftets URL-adresse samt adgangsinstruktioner.',
  'emails.openAccessNotify.subject' => 'Udgave nu i Open Access-format',
  'emails.openAccessNotify.body' => 'Læsere:<br />
<br />
{$contextName} har netop udgivet følgende udgave i et Open Access-format. Vi inviterer dig til at gennemse indholdsfortegnelsen her og derefter besøge vores websted ({$contextUrl}), hvor du kan gennemse artikler og elementer, der har din interesse.<br />
<br />
Tak for din fortsatte interesse i vores arbejde.<br />
{$editorialContactSignature}',
  'emails.openAccessNotify.description' => 'Denne e-mail sendes til registrerede læsere, der har anmodet om at modtage en e-mail-meddelelse, når en udgave udgives i et Open Access-format.',
  'emails.subscriptionBeforeExpiry.subject' => 'Meddelelse om udløb af abonnement',
  'emails.subscriptionBeforeExpiry.body' => '{$subscriberName}:<br />
<br />
Dit abonnement på {$contextName} udløber snart.<br />
<br />
{$subscriptionType}<br />
Udløbsdato: {$expiryDate}<br />
<br />
Hvis du vil sikre, at du fortsat har adgang til dette tidsskrift, skal du gå til tidsskriftets websted og forny dit abonnement. Du kan logge på systemet med dit brugernavn, &quot;{$username}&quot;.<br />
<br />
Hvis du har spørgsmål, er du velkommen til at kontakte mig.<br />
<br />
{$subscriptionContactSignature}',
  'emails.subscriptionBeforeExpiry.description' => 'Denne e-mail underretter en abonnent om, at vedkommendes abonnement snart udløber. Den indeholder tidsskriftets URL-adresse samt adgangsinstruktioner.',
  'emails.subscriptionAfterExpiry.subject' => 'Abonnementet er udløbet',
  'emails.subscriptionAfterExpiry.body' => '{$subscriberName}:<br />
<br />
Dit abonnement på {$contextName} er udløbet.<br />
<br />
{$subscriptionType}<br />
Udløbsdato: {$expiryDate}<br />
<br />
Hvis du vil forny abonnementet, skal du gå til tidsskriftets websted. Du kan logge på systemet med dit brugernavn, &quot;{$username}&quot;.<br />
<br />
Hvis du har spørgsmål, er du velkommen til at kontakte mig.<br />
<br />
{$subscriptionContactSignature}',
  'emails.subscriptionAfterExpiry.description' => 'Denne e-mail underretter en abonnent om, at vedkommendes abonnement er udløbet. Den indeholder tidsskriftets URL-adresse samt adgangsinstruktioner.',
  'emails.subscriptionAfterExpiryLast.subject' => 'Abonnementet er udløbet – sidste påmindelse',
  'emails.subscriptionAfterExpiryLast.body' => '{$subscriberName}:<br />
<br />
Dit abonnement på {$contextName} er udløbet.<br />
Vær opmærksom på, at dette er den sidste påmindelse, du vil modtage.<br />
<br />
{$subscriptionType}<br />
Udløbsdato: {$expiryDate}<br />
<br />
Hvis du vil forny abonnementet, skal du gå til tidsskriftets websted. Du kan logge på systemet med dit brugernavn, &quot;{$username}&quot;.<br />
<br />
Hvis du har spørgsmål, er du velkommen til at kontakte mig.<br />
<br />
{$subscriptionContactSignature}',
  'emails.subscriptionAfterExpiryLast.description' => 'Denne e-mail underretter en abonnent om, at vedkommendes abonnement er udløbet. Den indeholder tidsskriftets URL-adresse samt adgangsinstruktioner.',
  'emails.notification.subject' => 'Ny meddelelse fra {$siteTitle}',
  'emails.notification.body' => 'Du har modtaget en ny meddelelse fra {$siteTitle}:<br />
<br />
{$notificationContents}<br />
<br />
Link: {$url}<br />
<br />
{$principalContactSignature}',
  'emails.notification.description' => 'Denne e-mail er blevet sendt til registrerede brugere, som har valgt at få tilsendt denne type meddelelser.',
  'emails.editorDecisionAccept.subject' => 'Redaktørbeslutning',
  'emails.editorDecisionAccept.body' => '{$authorName}:<br />
<br />
Vi er nået frem til en afgørelse vedrørende dit bidrag til {$contextName}, &quot;{$submissionTitle}&quot;.<br />
<br />
Vi har besluttet at: Acceptere manuskript',
  'emails.editorDecisionAccept.description' => 'Denne e-mail fra redaktøren eller sektionsredaktøren til en forfatter er en meddelelse om den endelige afgørelse vedrørende deres bidrag.',
  'emails.editorDecisionRevisions.subject' => 'Redaktørbeslutning',
  'emails.editorDecisionRevisions.body' => '{$authorName}:<br />
<br />
Vi er nået frem til en afgørelse vedrørende dit bidrag til {$contextName}, &quot;{$submissionTitle}&quot;.<br />
<br />
Vi har besluttet følgende: Rettelser er påkrævet',
  'emails.editorDecisionRevisions.description' => 'Denne e-mail fra redaktøren eller sektionsredaktøren til en forfatter er en meddelelse om den endelige afgørelse vedrørende deres bidrag.',
  'emails.editorDecisionResubmit.subject' => 'Redaktørbeslutning',
  'emails.editorDecisionResubmit.body' => '{$authorName}:<br />
<br />
Vi er nået frem til en afgørelse vedrørende dit bidrag til {$contextName}, &quot;{$submissionTitle}&quot;.<br />
<br />
Vi har besluttet følgende: Fremsend igen til bedømmelse',
  'emails.editorDecisionResubmit.description' => 'Denne e-mail fra redaktøren eller sektionsredaktøren til en forfatter er en meddelelse om den endelige afgørelse vedrørende deres bidrag.',
  'emails.editorDecisionDecline.subject' => 'Redaktørbeslutning',
  'emails.editorDecisionDecline.body' => '{$authorName}:<br />
<br />
Vi er nået frem til en afgørelse vedrørende dit bidrag til {$contextName}, &quot;{$submissionTitle}&quot;.<br />
<br />
Vi har besluttet at: Afvise manuskript',
  'emails.editorDecisionDecline.description' => 'Denne e-mail fra redaktøren eller sektionsredaktøren til en forfatter er en meddelelse om den endelige afgørelse vedrørende deres bidrag.',
  'emails.subscriptionPurchaseIndl.subject' => 'Køb af abonnement: Individuelt',
  'emails.subscriptionPurchaseIndl.body' => 'Der er foretaget et online køb af et individuelt abonnement på {$contextName} med følgende oplysninger.<br />
<br />
Abonnementstype:<br />
{$subscriptionType}<br />
<br />
Bruger:<br />
{$userDetails}<br />
<br />
Medlemsoplysninger (hvis angivet):<br />
{$membership}<br />
<br />
Følg dette link, hvis du vil se eller redigere abonnementet.<br />
<br />
Link til abonnement: {$subscriptionUrl}<br />
',
  'emails.subscriptionPurchaseIndl.description' => 'Denne e-mail giver abonnementschefen besked om, at der er blevet købt et individuelt abonnement online. Meddelelsen indeholder en opsummering af abonnementsoplysningerne og et quick access-link til det købte abonnement.',
  'emails.subscriptionPurchaseInstl.subject' => 'Køb af abonnement: Institution',
  'emails.subscriptionPurchaseInstl.body' => 'Der er foretaget et online køb af et institutionsabonnement på {$contextName} med følgende oplysninger. For at aktivere dette abonnement skal du anvende det angivne link til abonnementet og sætte abonnementsstatus til &quot;Aktiv&quot;.<br />
<br />
Abonnementstype:<br />
{$subscriptionType}<br />
<br />
Institution:<br />
{$institutionName}<br />
{$institutionMailingAddress}<br />
<br />
Domæne (hvis angivet):<br />
{$domain}<br />
<br />
IP-områder (hvis angivet):<br />
{$ipRanges}<br />
<br />
Kontaktperson:<br />
{$userDetails}<br />
<br />
Medlemsoplysninger (hvis angivet):<br />
{$membership}<br />
<br />
Følg dette link, hvis du vil se eller redigere abonnementet.<br />
<br />
Link til abonnement: {$subscriptionUrl}<br />
',
  'emails.subscriptionPurchaseInstl.description' => 'Denne e-mail informerer abonnementschefen om, at et institutionelt abonnement er blevet købt online. Det giver resumeoplysninger om abonnementet og et hurtigt adgangslink til det købte abonnement.',
  'emails.subscriptionRenewIndl.subject' => 'Fornyelse af abonnement: Individuelt',
  'emails.subscriptionRenewIndl.body' => 'Der er foretaget en online fornyelse af et individuelt abonnement på {$contextName}med følgende oplysninger.<br />
<br />
Abonnementstype:<br />
{$subscriptionType}<br />
<br />
Bruger:<br />
{$userDetails}<br />
<br />
Medlemsoplysninger (hvis angivet):<br />
{$membership}<br />
<br />
Følg dette link, hvis du vil se eller redigere abonnementet.<br />
<br />
Link til abonnement: {$subscriptionUrl}<br />
',
  'emails.subscriptionRenewIndl.description' => 'Denne e-mail giver abonnementschefen besked om, at et individuelt abonnement er blevet fornyet online. Meddelelsen indeholder en opsummering af abonnementsoplysningerne og et quick access-link til det fornyede abonnement.',
  'emails.subscriptionRenewInstl.subject' => 'Fornyelse af abonnement: Institution',
  'emails.subscriptionRenewInstl.body' => 'Der er foretaget en online fornyelse af et institutionsabonnement på {$contextName} med følgende oplysninger.<br />
<br />
Abonnementstype:<br />
{$subscriptionType}<br />
<br />
Institution:<br />
{$institutionName}<br />
{$institutionMailingAddress}<br />
<br />
Domæne (hvis angivet):<br />
{$domain}<br />
<br />
IP-områder (hvis angivet):<br />
{$ipRanges}<br />
<br />
Kontaktperson:<br />
{$userDetails}<br />
<br />
Medlemsoplysninger (hvis angivet):<br />
{$membership}<br />
<br />
Følg dette link, hvis du vil se eller redigere abonnementet.<br />
<br />
Link til abonnement: {$subscriptionUrl}<br />
',
  'emails.subscriptionRenewInstl.description' => 'Denne e-mail giver abonnementschefen besked om, at et individuelt abonnement er blevet fornyet online. Meddelelsen indeholder en opsummering af abonnementsoplysningerne og et quick access-link til det fornyede abonnement.',
  'emails.citationEditorAuthorQuery.subject' => 'Referenceredigering',
  'emails.citationEditorAuthorQuery.body' => '{$authorFirstName},<br />
<br />
Du bedes verificere eller sende os de korrekte oplysninger i forbindelse med følgende reference i din artikel {$submissionTitle}:<br />
<br />
{$rawCitation}<br />
<br />
På forhånd tak!<br />
<br />
{$userFirstName}<br />
Manuskriptredaktør, {$contextName}<br />
',
  'emails.citationEditorAuthorQuery.description' => 'Denne e-mail tillader manuskriptredaktører at anmode forfattere om yderligere oplysninger vedrørende referencer.',
  'emails.editorDecisionSendToExternal.subject' => 'Redaktørbeslutning',
  'emails.editorDecisionSendToExternal.body' => '{$authorName}:<br />
<br />
Vi er nået frem til en afgørelse vedrørende dit bidrag til {$contextName}, &quot;{$submissionTitle}&quot;.<br />
<br />
Vi har besluttet følgende: Fremsendes til bedømmelse<br />
<br />
Submission URL: {$submissionUrl}',
  'emails.editorDecisionSendToExternal.description' => 'Denne e-mail fra redaktøren eller sektionsredaktøren til forfatteren meddeler at indsendelsen videresendes til ekstern bedømmelse.',
  'emails.editorDecisionSendToProduction.subject' => 'Redaktørbeslutning',
  'emails.editorDecisionSendToProduction.body' => '{$authorName}:<br />
<br />
Vi har færdiggjort redigeringen af din indsendelse, &quot;{$submissionTitle}.  Den vil nu blive sendt til publicering.<br />
<br />
Submission URL: {$submissionUrl}',
  'emails.editorDecisionSendToProduction.description' => 'Denne e-mail fra redaktøren eller sektionsredaktøren til forfatteren meddeler at indsendelsen nu sendes til publicering.',
  'emails.notificationCenterDefault.subject' => 'Besked omhandlende {$contextName}',
  'emails.notificationCenterDefault.body' => 'Skriv venligst din besked.',
  'emails.notificationCenterDefault.description' => 'Standardmeddelelsen (tom), der blev brugt i Notification Center Message Listbuilder.',
  'emails.reviewRequestOneclickSubsequent.subject' => 'Forespørgsel om bedømmelse af artikel',
  'emails.reviewRequestOneclickSubsequent.body' => '{$reviewerName}:<br />
<br />
Dette omhandler manuskriptet &quot;{$submissionTitle},&quot; som behandles af {$contextName}.<br />
<br />
Som opfølgning på en tidligere bedømmelse af manuskriptet, har forfatterne indsendt en revideret version af deres indlæg. Vi vil sætte stor pris på din hjælp, hvis du vil foretage en bedømmelse af det.<br />
<br />
Log på tidsskriftets websted inden {$responseDueDate} for at angive, om du vil påtage dig bedømmelsen eller ej, samt for at få adgang til manuskriptet og registrere din bedømmelse og anbefaling.<br />
<br />
Selve bedømmelsen skal afleveres senest den {$reviewDueDate}.<br />
<br />
Manuskriptets URL URL: {$submissionReviewUrl}<br />
<br />
Tak for din overvejelse af denne forespørgsel. <br />
<br />
{$editorialContactSignature}<br />
<br />
&quot;{$submissionTitle}&quot;<br />
<br />
{$submissionAbstract}',
  'emails.reviewRequestOneclickSubsequent.description' => 'Denne mail sendes af sektionsredaktøren til en bedømmer, der bedes oplyse om vedkommende vil påtage sig at bedømme et indlæg i en anden eller senere bedømmelsesrunde. Det indeholder informationer om indlægget så som titel og resumé, forfaldsdato for indlevering af bedømmelse samt hvordan man får adgang til indlægget. Denne besked anvendes når man har valgt standardopsætningen for bedømmelsesprocessen, Indstillinger > Workflow > Bedømmelse, og ’Aktiver adgang for bedømmere ved hjælp af ét klik’ er aktiveret.',
  'emails.reviewRequestAttachedSubsequent.subject' => 'Forespørgsel om bedømmelse af artikel',
  'emails.reviewRequestAttachedSubsequent.body' => '{$reviewerName}:<br />
<br />
Dette omhandler manuskriptet &quot;{$submissionTitle},&quot; som behandles af {$contextName}.<br />
<br />
Som opfølgning på en tidligere bedømmelse af manuskriptet, har forfatterne indsendt en revideret version af deres indlæg. Vi vil sætte stor pris på din hjælp, hvis du vil foretage en bedømmelse af det.<br />
<br />
Tidsskriftets retningslinjer for bedømmelser er tilføjet nedenfor og indlægget er vedhæftet denne e-mail. Din bedømmelse af indlægget sammen med din anbefaling bedes sendt til mig senest {$reviewDueDate}.<br />
<br />
Du bedes meddele os, om du vil påtage dig bedømmelsen eller ej senest {$responseDueDate}.<br />
<br />
Tak for din overvejelse af denne forespørgsel.<br />
<br />
{$editorialContactSignature}<br />
<br />
<br />
Retningslinjer for bedømmelser<br />
<br />
{$reviewGuidelines}<br />
',
  'emails.reviewRequestAttachedSubsequent.description' => 'Denne mail sendes af sektionsredaktøren til en bedømmer, der bedes oplyse om vedkommende vil påtage sig at bedømme et indlæg i en anden eller senere bedømmelsesrunde. Det inkluderer indlægget som vedhæftet fil. Denne forespørgsel anvendes når man har valgt at sende bedømmelsen vedhæftet e-mailen under Indstillinger > Workflow > Bedømmelse. (Ellers see REVIEW_REQUEST_SUBSEQUENT.)',
  'emails.reviewRequestSubsequent.subject' => 'Forespørgsel om bedømmelse af artikel',
  'emails.reviewRequestSubsequent.body' => '{$reviewerName}:<br />
<br />
Dette omhandler manuskriptet &quot;{$submissionTitle},&quot; som behandles af {$contextName}.<br />
<br />
Som opfølgning på en tidligere bedømmelse af manuskriptet, har forfatterne indsendt en revideret version af deres indlæg. Vi vil sætte stor pris på din hjælp, hvis du vil foretage en bedømmelse af det.<br />
<br />
Log på tidsskriftets websted inden {$responseDueDate} for at angive, om du vil påtage dig bedømmelsen eller ej, samt for at få adgang til manuskriptet og registrere din bedømmelse og anbefaling. Webstedet er {$contextUrl}<br />
<br />
Selve bedømmelsen skal afleveres senest den {$reviewDueDate}.<br />
<br />
Hvis du ikke har dit brugernavn og din adgangskode til tidsskriftets websted, kan du bruge dette link til at ændre adgangskoden (som så vil blive sendt til dig via e-mail sammen med dit brugernavn). {$passwordResetUrl}<br />
<br />
Manuskriptets URL: {$submissionReviewUrl}<br />
<br />
Tak for din overvejelse af denne forespørgsel.<br />
<br />
{$editorialContactSignature}<br />
<br />
&quot;{$submissionTitle}&quot;<br />
<br />
{$submissionAbstract}',
  'emails.reviewRequestSubsequent.description' => 'Denne mail sendes af sektionsredaktøren til en bedømmer, der bedes oplyse om vedkommende vil påtage sig at bedømme et indlæg i en anden eller senere bedømmelsesrunde. Det indeholder informationer om indlægget så som titel og resumé, forfaldsdato for indlevering af bedømmelse samt hvordan man får adgang til indlægget. Denne besked anvendes når man har valgt standardopsætningen for bedømmelsesprocessen > Indstillinger > Workflow > Bedømmelse. (Ellers se REVIEW_REQUEST_ATTACHED_SUBSEQUENT.)',
  'emails.revisedVersionNotify.subject' => 'Revideret udgave uploadet',
  'emails.revisedVersionNotify.body' => 'Redaktører:<br />
<br />
En revideret udgave af &quot;{$submissionTitle}&quot; er blevet uploadet af forfatter {$authorName}.<br />
<br />
Manuskriptets URL: {$submissionUrl}<br />
<br />
{$editorialContactSignature}',
  'emails.revisedVersionNotify.description' => 'Denne e-mail bliver automatisk sendt til udvalgte redaktør når forfatteren uploader en revideret udgave a en artikel.',
  'emails.editorDecisionInitialDecline.subject' => 'Redaktørbeslutning',
  'emails.editorDecisionInitialDecline.body' => '
			{$authorName}:<br />
<br />
Vi er nået frem til en afgørelse vedrørende dit bidrag til {$contextName}, &quot;{$submissionTitle}&quot;.<br />
<br />
Vi har besluttet at: Afvise manuskriptet',
  'emails.editorDecisionInitialDecline.description' => 'Denne e-mail sendes til forfatteren, hvis redaktøren afviser manuskriptet i indledningsfasen, før bedømmelsestrinnet',
  'emails.editorRecommendation.subject' => 'Redaktøranbefaling',
  'emails.editorRecommendation.body' => '{$editors}:<br />
<br />
Anbefalingen med hensyn til {$contextName}, &quot;{$submissionTitle}&quot; er: {$recommendation}',
  'emails.editorRecommendation.description' => 'Denne e-mail fra den rådgivende redaktør eller sektionsredaktør til de beslutningstagende redaktører eller sektionsredaktører videregiver en endelig anbefaling vedrørende indsendelsen.',
  'emails.submissionAckNotUser.subject' => 'Indsendelsesbekræftelse',
  'emails.submissionAckNotUser.body' => 'Hej<br />
<br />
{$submitterName} har indsendt manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. <br />
<br />
Hvis du har spørgsmål, er du velkommen til at kontakte mig. Tak fordi du har valgt at publicere din artikel i dette tidsskrift.<br />
<br />
{$editorialContactSignature}',
  'emails.submissionAckNotUser.description' => 'Når denne e-mail er aktiveret, sendes den automatisk til de øvrige forfattere, der ikke er registrerede brugere i OJS, men angivet under indsendelsesprocessen.',
  'emails.reviewReinstate.description' => 'Denne e-mail er afsendt af sektionsredaktøren til en bedømmer, som er i gang med en bedømmelse for at underrette vedkommende om, at en annulleret bedømmelse er blevet genindsat.',
  'emails.reviewReinstate.body' => '{$reviewerName}:<br />
<br />
Vi vil gerne på ny anmode om, at du foretager en bedømmelse af indsendelsen, &quot;{$submissionTitle},&quot; for {$contextName}. Vi håber, at du vil kunne være behjælpelig med at gennemføre dette tidsskrifts bedømmelsesforløb.<br />
<br />
Du bedes kontakte mig, hvis du har spørgsmål.',
  'emails.reviewReinstate.subject' => 'Anmodning om bedømmelse genindsat',
  'emails.statisticsReportNotification.description' => 'Denne e-mail sendes automatisk en gang om måneden til redaktører og tidsskriftschefer for at give dem et overblik over systemets tilstand.',
  'emails.statisticsReportNotification.body' => '
{$name}, <br />
<br />
Dit tidsskrifts tilstandsrapport for {$month}, {$year} er nu tilgængelig. De statistiske nøgletal ses nedenfor.<br />
<ul>
	<li>Nye indsendelser I denne måned: {$newSubmissions}</li>
	<li>Afviste indsendelser I denne måned: {$declinedSubmissions}</li>
	<li>Accepterede indsendelser i denne måned: {$acceptedSubmissions}</li>
	<li>Systemets samlede antal indsendelser: {$totalSubmissions}</li>
</ul>
Log ind på tidsskriftet for at se flere oplysninger om <a href="{$editorialStatsLink}">redaktionelle udviklingstendenser </a> og <a href="{$publicationStatsLink}">offentliggjorte artikelstatistikker</a>. En komplet kopi af denne måneds redaktionelle udvikling er vedhæftet.<br />
<br />
Med venlig hilsen<br />
{$principalContactSignature}',
  'emails.statisticsReportNotification.subject' => 'Redaktionel aktivitet for {$month}, {$year}',
  'emails.announcement.description' => 'Denne e-mail sendes, når der oprettes en ny meddelelse.',
  'emails.announcement.body' => '<b>{$title}</b><br />
<br />
{$summary}<br />
<br />
Besøg vores websted  <a href="{$url}">for at læse hele meddelelsen</a>.',
  'emails.announcement.subject' => '{$title}',
);
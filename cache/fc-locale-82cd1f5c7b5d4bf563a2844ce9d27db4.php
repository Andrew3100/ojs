<?php return array (
  'emails.passwordResetConfirm.subject' => 'Potvrzení o resetování hesla',
  'emails.passwordResetConfirm.body' => 'Obdrželi jsme žádost o resetování Vašeho hesla pro stránku {$siteTitle}.<br />
<br />
Pokud jste tuto žádost neodeslal, ignorujte prosím tento email a Vaše heslo nebude změněno. Pokud chcete své heslo resetovat, klikněte na URL adresu níže.<br />
<br />
Resetovat moje heslo: {$url}<br />
<br />
{$principalContactSignature}',
  'emails.passwordResetConfirm.description' => 'Tento email je zasílán registrovanému uživateli, když uvede, že zapomněl své heslo nebo se nemůže přihlásit. Obsahuje adresu URL, kterou může následovat a resetovat své heslo.',
  'emails.passwordReset.subject' => 'Resetování hesla',
  'emails.passwordReset.body' => 'Vaše heslo pro stránku {$siteTitle} bylo úspěšně resetováno. Zapamatujte si prosím toto uživatelské jméno a heslo, protože je budete potřebovat pro veškerou práci s tímto časopisem.<br />
<br />
Vaše uživatelské jméno: {$username}<br />
Heslo: {$password}<br />
<br />
{$principalContactSignature}',
  'emails.passwordReset.description' => 'Tento email je zaslán registrovanému uživateli, když úspěšně resetuje své heslo postupem uvedeným v PASSWORD_RESET_CONFIRM emailu.',
  'emails.userRegister.subject' => 'Registrace do časopisu',
  'emails.userRegister.body' => '{$userFullName}<br />
<br />
Nyní jste zaregistrován jako uživatel časopisu {$contextName}. Přikládáme do emailu Vaše uživatelské jméno a heslo, které potřebujete pro veškerou práci s tímto časopisem na jeho stránkách. Kdykoliv můžete požádat o vyřazení ze seznamu uživatelů časopisu tím, že mě budete kontaktovat.<br />
<br />
Uživatelské jméno: {$username}<br />
Heslo: {$password}<br />
<br />
Děkujeme,<br />
{$principalContactSignature}',
  'emails.userRegister.description' => 'Tento email je zaslán nově registrovanému uživateli jako přivítání do systému a poskytne mu doklad o jeho uživatelském jménu a heslu.',
  'emails.userValidate.subject' => 'Ověření Vašeho účtu',
  'emails.userValidate.body' => '{$userFullName}<br />
<br />
Vytvořil jste si účet pro {$contextName}, ale před tím, než ho budete moci začít používat, musí být ověřen Váš emailový účet. Pro jeho ověření jednoduše následujte odkaz uvedený níže:<br />
<br />
{$activateUrl}<br />
<br />
Děkujeme,<br />
{$principalContactSignature}',
  'emails.userValidate.description' => 'Tento email je zaslán nově registrovanému uživateli a obsahuje odkaz sloužící k ověření jeho emailové adresy.',
  'emails.reviewerRegister.subject' => 'Zaregistrování na pozici recenzenta pro {$contextName}',
  'emails.reviewerRegister.body' => 'S ohledem na Vaši odbornost jsme si Vás dovolili zaregistrovat do databáze recenzentů pro časopis {$contextName}. To Vás nezavazuje k žádné odpovědnosti, pouze nám to umožní Vás rychle kontaktovat s příspěvkem, který byste mohl případně recenzovat. Pokud Vás přizveme ke zpracování recenze, budete mít příležitost vidět název a abstrakt daného příspěvku a vždy budete v pozici, kdy můžete rozhodnout, zda přizvání přijmete nebo odmítnete. Můžete také kdykoliv požádat o odstranění Vašeho jména ze seznamu recenzentů.<br />
<br />
Přidělili jsme Vám uživatelské jméno a heslo, které budete používat na internetových stránkách časopisu. Možná budete chtít například upravit svůj profil nebo rozsah zájmu o zpracování recenzí.<br />
<br />
Uživatelské jméno: {$username}<br />
Heslo: {$password}<br />
<br />
Děkujeme,<br />
{$principalContactSignature}',
  'emails.reviewerRegister.description' => 'Tento email je zaslán nově registrovanému recenzentovi jako přivítání do systému a poskytne mu doklad o jeho uživatelském jménu a heslu.',
  'emails.publishNotify.subject' => 'Vydání nového čísla',
  'emails.publishNotify.body' => 'Čtenáři:<br />
<br />
{$contextName} zrovna vydává své poslední číslo na {$contextUrl}. Zveme Vás zde ke shlédnutí obsahu a poté návštěvě našich stránek se všemi články.<br />
<br />
Děkujeme za Váš dlouhodobý zájem o naši práci,<br />
{$editorialContactSignature}',
  'emails.publishNotify.description' => 'Tento email je zasílán registrovaným čtenářům prostřednictvím odkazu "Informovat uživatele" z domácí stránky editora. Informuje čtenáře o novém čísle a zve je k návštěvě časopisu přes poskytnutou URL adresu.',
  'emails.lockssExistingArchive.subject' => 'Žádost o archivaci pro {$contextName}',
  'emails.lockssExistingArchive.body' => 'Vážený [univerzitní knihovník]<br />
<br />
{$contextName} &amp;lt;{$contextUrl}&amp;gt; je časopis, ve kterém pracovník Vaší univerzity [jméno pracovníka] zastává pozici [název pozice]. Tento časopis má zájem vybudovat archiv kopatibilní s programem LOCKSS (Lots of Copies Keep Stuff Safe) společně s touto knihovnou a dalšími univerzitními knihovnami.<br />
<br />
[Krátký popis časopisu]<br />
<br />
URL k Prohlášení LOCKSS vydavatele pro náš časopis je: {$contextUrl}/gateway/lockss<br />
<br />
Chápeme, že jste již zapojeni do LOCKSS. Pokud můžeme poskytnout jakákoliv dodatečná metadata pro účely zaregistrování našeho časopisu do Vaší verze LOCKSS, velice rádi Vám je dodáme.<br />
<br />
Děkujeme,<br />
{$principalContactSignature}',
  'emails.lockssExistingArchive.description' => 'Tento email žádá vlastníka LOCKSS archivu, aby zvážil zařazení tohoto časopisu do svého archivu. Obsauje URL k Prohlášení LOCKSS vydavatele časopisu.',
  'emails.lockssNewArchive.subject' => 'Žádost o archivaci pro {$contextName}',
  'emails.lockssNewArchive.body' => 'Vážený [univerzitní knihovník]<br />
<br />
{$contextName} &amp;lt;{$contextUrl}&amp;gt; je časopis, ve kterém pracovník Vaší univerzity [jméno pracovníka] zastává pozici [název pozice]. Tento časopis má zájem vybudovat archiv kopatibilní s programem LOCKSS (Lots of Copies Keep Stuff Safe) společně s touto knihovnou a dalšími univerzitními knihovnami.<br />
<br />
[Krátký popis časopisu]<br />
<br />
Program LOCKSS &amp;lt;http://lockss.org/&amp;gt;, mezinárodní iniciativa knihoven/vydavatelů, je fungujícím příkladem archivačního úložiště s distribuovanou ochranou. Další detaily viz níže. Software, který funguje na pěžném osobním počítači, je zdarma; systém je snadno převoditelný on-line; je vyžadováno velmi málo následné údržby.<br />
<br />
Z důvodu pomoci při archivování našeho časopisu Vás zveme, abyste se stal členem LOCKSS komunity a pomáhal tak shromažďovat a zachovávat práci produkovanou pracovníky Vaší univerzity i dalších vědeckých pracovníků z celého světa. Abyste tak mohl učinit, pověřte prosím někoho z Vašich pracovníků, ať navštíví stránky LOCKSS, kde najde informace, jak tento systém pracuje. Těším se, že se mě budete infomovat o možnostech poskytnutí archivační podpory tonuto časopisu.<br />
<br />
Děkujeme,<br />
{$principalContactSignature}',
  'emails.lockssNewArchive.description' => 'Tento email pobízí příjemce, aby se zapojil do LOCKSS iniciativy a zahrnul tento časopis do archivu. Obsahuje informace o LOCKSS iniciativě a způsobu, jak se do ní zapojit.',
  'emails.submissionAck.subject' => 'Poděkování za příspěvek',
  'emails.submissionAck.body' => '{$authorName}:<br />
<br />
Děkujeme za zaslání příspěvku &quot;{$submissionTitle}&quot; do {$contextName}. S online systémem, který používáme, budete moci sledovat postup příspěvku redakčním procesem po přihlášení na stránkách časopisu:<br />
<br />
URL rukopisu: {$submissionUrl}<br />
Uživatelské jméno: {$authorUsername}<br />
<br />
Pokud máte nějaké otázky, kontaktujte mě prosím. Děkujeme, že jste zvolili tento časopis pro publikování Vaší práce.<br />
<br />
{$editorialContactSignature}',
  'emails.submissionAck.description' => 'Tento email, pokud je povolen, je automaticky zaslán autorce/autorovi, když dokončí proces odesílání příspěvku do časopisu. Obsahuje informace o možnosti sledování příspěvku během redakčního zpracování a poděkování autorovi za příspěvek.',
  'emails.submissionUnsuitable.subject' => 'Nevhodný příspěvek',
  'emails.submissionUnsuitable.body' => '{$authorName}:<br />
<br />
Z úvodního prostudování příspěvku &quot;{$submissionTitle}&quot; jasně vyplynulo, že tento příspěvek nezapadá do záběru a zaměření časopisu {$contextName}. Doporučuji konzultovat popis tohoto časopisu pod položkou O časopisu a také obsah posledních čísel. Zjistíte tak více o pracích, které publikujeme. Můžete také zvážit zaslání Vašeho rukopisu do jiného, vhodnějšího časopisu.<br />
<br />
{$editorialContactSignature}',
  'emails.submissionUnsuitable.description' => '',
  'emails.submissionComment.subject' => 'Komentář příspěvku',
  'emails.submissionComment.body' => '{$name}:<br />
<br />
{$commentName} přidal komentář k příspěvku &quot;{$submissionTitle}&quot; v {$contextName}:<br />
<br />
{$comments}',
  'emails.submissionComment.description' => 'Tento email oznamuje různým lidem zapojeným do redakčního zpracování příspěvku, že byl odeslán nový komentář.',
  'emails.submissionDecisionReviewers.subject' => 'Rozhodnutí o "{$submissionTitle}"',
  'emails.submissionDecisionReviewers.body' => 'Jako jednomu z recenzentů přípsěvku &quot;{$submissionTitle}&quot; do {$contextName} Vám zasílám posudky a editorské rozhodnutí, které bylo posláno autorovi příspěvku. Ještě jednou děkujeme za Vaši důležitou pomoc v tomto recenzním řízení.<br />
<br />
{$editorialContactSignature}<br />
<br />
{$comments}',
  'emails.submissionDecisionReviewers.description' => 'Tento email oznamuje recenzentům příspěvku, že bylo dokončeno recenzní řízení. Obsahuje informace o článku a konečné rozhodnutí a poděkování recenzentům za jejich práci.',
  'emails.editorAssign.subject' => 'Editorský úkol',
  'emails.editorAssign.body' => '{$editorialContactName}:<br />
<br />
Byl Vám přidělen příspěvek &quot;{$submissionTitle}&quot; do {$contextName}, abyste s ním v roli editora sekce prošel redakčním zpracováním.<br />
<br />
URL příspěvku: {$submissionUrl}<br />
Uživatelské jméno: {$editorUsername}<br />
<br />
Děkujeme.',
  'emails.editorAssign.description' => 'Tento email informuje editora sekce, že mu editor přidělil úkol dohlížet na příspěvek během redakčního zpracování. Obsahuje informace o příspěvku a přístupu na stránky časopisu.',
  'emails.reviewRequest.subject' => 'Žádost o zpracování recenze článku',
  'emails.reviewRequest.body' => '{$reviewerName}:<br />
<br />
Domnívám se, že byste mohl být výborným recenzentem příspěvku &quot;{$submissionTitle},&quot; který byl zaslán do {$contextName}. Abstrakt příspěvku je vložen níže. Věřím, že zvážíte možnost přijetí tohoto pro nás důležitého úkolu.<br />
<br />
Prosím, přihlaste se do {$responseDueDate} na stránkách časopisu, abyste uvedl, zda recenzi zpracujete nebo ne a také pro přístup k příspěvku a zaznamenání Vaší recenze a doporučení. Adresa webové stránky je {$contextUrl}<br />
<br />
Termín pro zpracování recenze je {$reviewDueDate}.<br />
<br />
Pokud nemáte své uživatelské jméno a heslo pro webovou stránku časopisu, můžete použít tento odkaz pro resetování Vašeho hesla (které Vám bude zasláno emailem spolu s Vaším uživatelským jménem). {$passwordResetUrl}<br />
<br />
URL příspěvku: {$submissionReviewUrl}<br />
<br />
Děkujeme za zvážení této žádosti.<br />
<br />
{$editorialContactSignature}<br />
<br />
&quot;{$submissionTitle}&quot;<br />
<br />
{$submissionAbstract}',
  'emails.reviewRequest.description' => 'Tento email od editora sekce pro recenzenta žádá, aby recenzent přijal nebo odmítl úkol zpracovat recenzi příspěvku. Obsahuje informace o příspěvku, jako je název a abstrakt, termín pro zpracování recenze a jak se dostat k samotnému příspěvku. Tato zpráva je používána, pokud je zvoleno Standardní recenzí řízení ve druhém kroku  Nastavení časopisu. (V jiném případě viz REVIEW_REQUEST_ATTACHED.)',
  'emails.reviewRequestOneclick.subject' => 'Žádost o zpracování recenze článku',
  'emails.reviewRequestOneclick.body' => '{$reviewerName}:<br />
<br />
Domnívám se, že byste mohl být výborným recenzentem příspěvku &quot;{$submissionTitle},&quot; který byl zaslán do {$contextName}. Abstrakt příspěvku je vložen níže. Věřím, že zvážíte možnost přijetí tohoto pro nás důležitého úkolu.<br />
<br />
Prosím, přihlaste se do {$responseDueDate} na stránkách časopisu, abyste uvedl, zda recenzi zpracujete nebo ne a také pro přístup k příspěvku a zaznamenání Vaší recenze a doporučení.<br />
<br />
Termín pro zpracování recenze je {$reviewDueDate}.<br />
<br />
URL příspěvku: {$submissionReviewUrl}<br />
<br />
Děkujeme za zvážení této žádosti.<br />
<br />
{$editorialContactSignature}<br />
<br />
&quot;{$submissionTitle}&quot;<br />
<br />
{$submissionAbstract}',
  'emails.reviewRequestOneclick.description' => 'Tento email od editora sekce pro recenzenta žádá, aby recenzent přijal nebo odmítl úkol zpracovat recenzi příspěvku. Obsahuje informace o příspěvku, jako je název a abstrakt, termín pro zpracování recenze a jak se dostat k samotnému příspěvku. Tato zpráva je používána, pokud je zvoleno Standardní recenzí řízení ve druhém kroku  Nastavení časopisu a je povolen přístup recenzenta na jedno kliknutí.',
  'emails.reviewRequestAttached.subject' => 'Žádost o zpracování recenze článku',
  'emails.reviewRequestAttached.body' => '{$reviewerName}:<br />
<br />
Domnívám se, že byste mohl být výborným recenzentem příspěvku &quot;{$submissionTitle}&quot; a žádám Vás, abyste zvážil možnost přijetí tohoto pro nás důležitého úkolu. Instrukce pro zpracování recenze pro tento časopis jsou připojeny níže a příspěvek je přiložen k tomuto emailu. Vaši recenzi příspěvku spolu s Vaším doporučením byste mi měl zaslat emailem do {$reviewDueDate}.<br />
<br />
Uveďte prosím do {$responseDueDate} v odpovědi na tento email, zda můžete a chcete zpracovat tuto recenzi.<br />
<br />
Děkujeme za zvážení této žádosti.<br />
<br />
{$editorialContactSignature}<br />
<br />
<br />
Instrukce pro zpracování recenze<br />
<br />
{$reviewGuidelines}<br />
',
  'emails.reviewRequestAttached.description' => 'Tento email od editora sekce pro recenzenta žádá, aby recenzent přijal nebo odmítl úkol zpracovat recenzi příspěvku. Obsahuje příspěvek jako přílohu. Tato zpráva je používána, pokud je zvoleno Recenzí řízení vyžívající emailových příloh ve druhém kroku  Nastavení časopisu. (V jiném případě viz REVIEW_REQUEST.)',
  'emails.reviewCancel.subject' => 'Žádost o zrušení recenze',
  'emails.reviewCancel.body' => '{$reviewerName}:<br />
<br />
V tomto bodě jsme se rozhodli odvolat naši žádost, abyste pro nás zpracoval recenzi příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Omlouváme se za veškeré nepříjemnosti, které by Vám to mohlo způsobit, a doufáme, že Vás budeme moci oslovit ohledně recenzních řízení tohoto časopisu v budoucnu.<br />
<br />
V případě, že budete mít jakékoliv dotazy, mě prosím kontaktujte.',
  'emails.reviewCancel.description' => 'Tento email zasílá editor sekce recenzentovi, který má rozpracovanou recenzi, aby mu oznámil, že požadavek na zpracování recenze byl zrušen.',
  'emails.reviewConfirm.subject' => 'Mohu zpracovat recenzi',
  'emails.reviewConfirm.body' => 'Editoři:<br />
<br />
Mohu a jsem ochotný zpracovat recenzi příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Děkuji, že jste mě oslovili. Plánuji dokončit zpracování recenze ve stanoveném termínu {$reviewDueDate}, případně dříve.<br />
<br />
{$reviewerName}',
  'emails.reviewConfirm.description' => 'Tento email posílá recenzent editorovi sekce v odpovědi na žádost o zpracování recenze, aby mu oznámil, že žádost přijal a zpracuje recenzi ve stanoveném termínu.',
  'emails.reviewDecline.subject' => 'Nemohu zpracovat recenzi',
  'emails.reviewDecline.body' => 'Editoři:<br />
<br />
Obávám se, že tentokrát nejsem schopen zpracovat recenzi příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Děkuji, že jste mě oslovili a neváhejte mě jindy opět kontaktovat.<br />
<br />
{$reviewerName}',
  'emails.reviewDecline.description' => 'Tento email posílá recenzent editorovi sekce v odpovědi na žádost o zpracování recenze, aby mu oznámil, že recenzi nemůže zpracovat.',
  'emails.reviewAck.subject' => 'Poděkování za zpracování recenze článku',
  'emails.reviewAck.body' => '{$reviewerName}:<br />
<br />
Děkujeme za dokončení recenze příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Vážíme si Vaší práce vedoucí ke zkvalitnění článků, které publikujeme.',
  'emails.reviewAck.description' => 'Tento email posílá editor sekce, aby potvrdil přijetí zpracované recenze a poděkoval recenzentovi za jeho práci.',
  'emails.reviewRemind.subject' => 'Připomenutí recenze příspěvku',
  'emails.reviewRemind.body' => '{$reviewerName}:<br />
<br />
Dovolujeme si Vám opatrně připomenout naši žádost o zpracování recenze příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Doufali jsme, že budeme mít tuto recenzi hotovou do {$reviewDueDate} a budeme rádi, když ji od Vás dostaneme hned, jak ji budete moci dokončit.<br />
<br />
Pokud nemáte své uživatelské jméno a heslo pro webovou stránku časopisu, můžete použít tento odkaz pro resetování Vašeho hesla (které Vám bude zasláno emailem spolu s Vaším uživatelským jménem). {$passwordResetUrl}<br />
<br />
URL příspěvku: {$submissionReviewUrl}<br />
<br />
Potvrďte prosím, zda můžete dokončit tento nezbytný úkol pro náš časopis. Těším se, že se ozvete.<br />
<br />
{$editorialContactSignature}',
  'emails.reviewRemind.description' => 'Tento email posílá editor sekce recenzentovi, aby mu připomněl, že vypršel termín pro zpracování recenze.',
  'emails.reviewRemindOneclick.subject' => 'Připomenutí recenze příspěvku',
  'emails.reviewRemindOneclick.body' => '{$reviewerName}:<br />
<br />
Dovolujeme si Vám opatrně připomenout naši žádost o zpracování recenze příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Doufali jsme, že budeme mít tuto recenzi hotovou do {$reviewDueDate} a budeme rádi, když ji od Vás dostaneme hned, jak ji budete moci dokončit.<br />
<br />
URL příspěvku: {$submissionReviewUrl}<br />
<br />
Potvrďte prosím, zda můžete dokončit tento nezbytný úkol pro náš časopis. Těším se, že se ozvete.<br />
<br />
{$editorialContactSignature}',
  'emails.reviewRemindOneclick.description' => 'Tento email posílá editor sekce recenzentovi, aby mu připomněl, že vypršel termín pro zpracování recenze.',
  'emails.reviewRemindAuto.subject' => 'Automatické připomenutí recenze příspěvku',
  'emails.reviewRemindAuto.body' => '{$reviewerName}:<br />
<br />
Dovolujeme si Vám opatrně připomenout naši žádost o zpracování recenze příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Doufali jsme, že budeme mít tuto recenzi hotovou do {$reviewDueDate} a tento email byl automaticky vygenerován a poslán, jelikož stanovený termín již vypršel. Budeme velice rádi, když od Vás recenzi dostaneme hned, jak ji budete moci dokončit.<br />
<br />
Pokud nemáte své uživatelské jméno a heslo pro webovou stránku časopisu, můžete použít tento odkaz pro resetování Vašeho hesla (které Vám bude zasláno emailem spolu s Vaším uživatelským jménem). {$passwordResetUrl}<br />
<br />
URL příspěvku: {$submissionReviewUrl}<br />
<br />
Potvrďte prosím, zda můžete dokončit tento nezbytný úkol pro náš časopis. Těším se, že se ozvete.<br />
<br />
{$editorialContactSignature}',
  'emails.reviewRemindAuto.description' => 'Tento email je automaticky poslán, když recenzentovi vyprší stanovený termín pro zpracování recenze (viz Možnosti recenze v Nastavení časopisu, Krok 2) a je zakázán přístup recenzenta na jedno kliknutí. Musí být povoleny a nakonfigurovány naplánované úlohy (viz konfigurační soubor stránky).',
  'emails.reviewRemindAutoOneclick.subject' => 'Automatické připomenutí recenze příspěvku',
  'emails.reviewRemindAutoOneclick.body' => '{$reviewerName}:<br />
<br />
Dovolujeme si Vám opatrně připomenout naši žádost o zpracování recenze příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Doufali jsme, že budeme mít tuto recenzi hotovou do {$reviewDueDate} a tento email byl automaticky vygenerován a poslán, jelikož stanovený termín již vypršel. Budeme velice rádi, když od Vás recenzi dostaneme hned, jak ji budete moci dokončit.<br />
<br />
URL příspěvku: {$submissionReviewUrl}<br />
<br />
Potvrďte prosím, zda můžete dokončit tento nezbytný úkol pro náš časopis. Těším se, že se ozvete.<br />
<br />
{$editorialContactSignature}',
  'emails.reviewRemindAutoOneclick.description' => 'Tento email je automaticky poslán, když recenzentovi vyprší stanovený termín pro zpracování recenze (viz Možnosti recenze v Nastavení časopisu, Krok 2) a je povolen přístup recenzenta na jedno kliknutí. Musí být povoleny a nakonfigurovány naplánované úlohy (viz konfigurační soubor stránky).',
  'emails.copyeditRequest.subject' => 'Žádost o redigování příspěvku',
  'emails.copyeditRequest.body' => '{$participantName}:<br />
<br />
Chtěl bych vás požádat, abyste zredigoval článek &quot;{$submissionTitle}&quot; pro {$contextName} a postupujte přitom prosím podle následujících kroků:<br />
1. Klikněte níže na URL příspěvku.<br />
2. Otevřete libovolný soubor v sekci Soubory návrhů a proveďte redakční editaci, případě využijte diskusi pro editační fázi.<br />
3.  Uložte zredigovaný soubor a nahrajte ho v editačním panelu.<br />
4 . Upozorněte redaktora, že všechny soubory byly zeditovány a může začít produkční fáze.<br />
<br />
{$contextName} URL: {$contextUrl}<br />
URL příspěvku: {$submissionUrl}<br />
Uživatelské jméno: {$participantUsername}',
  'emails.copyeditRequest.description' => 'Tento email posílá editor sekce redaktorovi, aby ho požádal o zahájení procesu redigování. Obsahuje informace o příspěvku a jek se k němu dostat.',
  'emails.copyeditComplete.subject' => 'Redigování dokončeno ',
  'emails.copyeditComplete.body' => '{$editorialContactName}:<br />
<br />
Právě jsme provedli redigování Vašeho příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Pro posouzení navrhovaných změn a zodpovězení požadavků na autora postupujte prosím podle následujících kroků:<br />
<br />
1. Přes níže uvedenou URL adresu a pomocí vašeho uživatelského jména hesla se přihlaste do časopisu (v případě potřeby použijte odkaz Zapomenuté heslo).<br />
2. Stáhněte zredigovanou verzi souboru kliknutím na Úvodní redigovaný soubor a otevřete ho.<br />
3. Projděte redakční zásahy a proveďte změny s použitím funkce sledování změn ve Wordu. Zodpovězte také požadavky na autora.<br />
4. Uložte soubor na plochu a nahrajte ho do 2. Redigovaná verze autora.<br />
5. Klikněte na ikonu emailu pod DOKONČIT a pošlete email editorovi.<br />
<br />
Toto je poslední příležitost, kterou máte, abyste provedl výraznější změny. Později budete požádán, abyste provedl korekturu sazebnic, ale v tom okamžiku již budete moci opravit pouze drobné typografické a grafické chyby.<br />
<br />
URL příspěvku: <a href="{$submissionEditingUrl}">{$submissionEditingUrl}</a><br />
<br />
Pokud nyní nemůžete tuto práci provést nebo máte nějaké otázky, kontaktujte mě prosím. Děkujeme za Vaše přispění do tohoto časopisu.<br />
<br />
<br />
{$participantName}',
  'emails.copyeditComplete.description' => '',
  'emails.copyeditAck.subject' => 'Poděkování za redigování ',
  'emails.copyeditAck.body' => '{$participantName}:<br />
<br />
Děkujeme vám za zredigování příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Významně tím pomáháte udržet kvalitu tohoto časopisu.<br />
<br />
{$editorialContactSignature}',
  'emails.copyeditAck.description' => 'Tento email posílá editor sekce redaktorovi příspěvku, aby mu poděkoval za úspěšně dokončený proces redigování článku.',
  'emails.copyeditAuthorRequest.subject' => 'Žádost o kontrolu redigování',
  'emails.copyeditAuthorRequest.body' => '{$authorName}:<br />
<br />
Váš příspěvek &quot;{$submissionTitle}&quot; pro {$contextName} prošel prvním krokem redigování a máte ho přístupný pro kontrolu. Postupujte podle následujících kroků.<br />
<br />
1. Klikněte na níže uvedenou URL adresu příspěvku.<br />
2. Přihlaste se do časopisu a klikněte na Soubor, který se zobrazí v Kroku 1.<br />
3. Otevřete stažený příspěvek.<br />
4. Překontrolujte text včetně návrhů redaktora a požadavků na autora.<br />
5. Proveďte všechny úpravy, které vylepší text<br />
6. Po dokončení nahrajte soubor do Kroku 2.<br />
7. klikněte na METADATA a zkontrolujte úplnost a přesnost informací pro indexování.<br />
8. Pošlete email DOKONČENO editorovi a redaktorovi.<br />
<br />
URL příspěvku: <a href="{$submissionUrl}">{$submissionUrl}</a><br />
<br />
Toto je poslední možnost udělat v příspěvku podstatnější redakční zásahy. Fáze korektur, která následuje po přípravě sazebnic, je omezena na opravy typografických a grafických chyb.<br />
<br />
Pokud nyní nemůžete tuto práci provést nebo máte nějaké otázky, kontaktujte mě prosím. Děkujeme za Vaše přispění do tohoto časopisu.<br />
<br />
{$editorialContactSignature}',
  'emails.copyeditAuthorRequest.description' => 'Tento email posílá editor sekce autorovi příspěvku, aby ho požádal o kontrolu práce redaktora. Obsahuje informace o přístupu k článku a upozorňuje, že toto je poslední příležitost pro autora, aby udělal podstatnější změny.',
  'emails.copyeditAuthorComplete.subject' => 'Dokončena kontrola redigování ',
  'emails.copyeditAuthorComplete.body' => '{$editorialContactName}:<br />
<br />
Právě jsem zkontrolovat zredigovaný příspěvek &quot;{$submissionTitle}&quot; pro {$contextName}. Příspěvek je připraven pro finální kolo redigování a grafické úpravy.<br />
<br />
Děkuji za Vaše přispění k mojí práci<br />
{$authorName}',
  'emails.copyeditAuthorComplete.description' => 'Tento email posílá autor editorovi sekce, aby mu oznámil, že dokončil proces redigování.',
  'emails.copyeditAuthorAck.subject' => 'Poděkování za kontrolu redigování ',
  'emails.copyeditAuthorAck.body' => '{$authorName}:<br />
<br />
Děkujeme za kontrolu redigování Vašeho příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Těšíme se na opublikování této práce.<br />
<br />
{$editorialContactSignature}',
  'emails.copyeditAuthorAck.description' => 'Tento email posílá editor sekce autorovi příspěvku, aby mu potvrdil dokončení procesu redigování a poděkoval mu za jeho práci.',
  'emails.copyeditFinalRequest.subject' => 'Finální kontrola redigování ',
  'emails.copyeditFinalRequest.body' => '{$participantName}:<br />
<br />
Autor a editor právě dokončili kontrolu redigování příspěvku&quot;{$submissionTitle}&quot; pro {$contextName}. Nyní je třeba připravit &quot;čistou kopii&quot; pro grafické zpracování. K tomu je třeba postupovat podle následujících kroků:<br />
1. Klikněte na níže uvedenou URL adresu příspěvku.<br />
2. Přihlaste se do časopisu a klikněte na Soubor, který se zobrazí v Kroku 2.<br />
3. Otevřete stažený soubor a zapracujte všechny redaktorské úpravy a reakce na požadavky.<br />
4. Uložte vyčištěný soubor a nahrajte ho do Kroku 3 redigování.<br />
5. Klikněte na METADATA a zkontrolujte informace pro indexování (uložte případné opravy).<br />
6. Pošlete email DOKONČENO editorovi.<br />
<br />
{$contextName} URL: <a href="{$contextUrl}">{$contextUrl}</a><br />
URL příspěvku: <a href="{$submissionUrl}">{$submissionUrl}</a><br />
Uživatelské jméno: {$participantUsername}<br />
<br />
{$editorialContactSignature}',
  'emails.copyeditFinalRequest.description' => 'Tento email posílá editor sekce redaktorovi a žádá ho, aby provedl finální kolo redigování před tím, než příspěvek vstoupí do fáze grafických úprav.',
  'emails.copyeditFinalComplete.subject' => 'Dokončena finální kontrola redigování ',
  'emails.copyeditFinalComplete.body' => '{$editorialContactName}:<br />
<br />
Právě jsem připravil čistou redigovanou verzi příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Je připravena pro grafické úpravy a přípravu sazebnic.<br />
<br />
{$participantName}',
  'emails.copyeditFinalComplete.description' => 'Tento email posílá redaktor editorovi sekce, aby mu oznámil, že bylo dokončeno finální kolo redigování, a že nyní může začít fáze grafických úprav.',
  'emails.copyeditFinalAck.subject' => 'Poděkování za finální kontrolu redigování ',
  'emails.copyeditFinalAck.body' => '{$participantName}:<br />
<br />
Děkujeme za dokončení redigování příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Tato příprava &quot;čisté kopie&quot; pro grafické úpravy je důležitý krok v redakčním procesu.<br />
<br />
{$editorialContactSignature}',
  'emails.copyeditFinalAck.description' => 'Tento email posílá editor sekce redaktorovi, aby mu poděkoval za dokončení finálního kola redigování a ocenil jeho práci.',
  'emails.layoutRequest.subject' => 'Žádost o sazebnice',
  'emails.layoutRequest.body' => '{$participantName}:<br />
<br />
Příspěvek &quot;{$submissionTitle}&quot; pro {$contextName} je nyní třeba připravit do sazenicového formátu podle následujících instrukcí.<br />
1. Klikněte níže na URL příspěvku.<br />
2. Přihlaste se do časopisu a pro vytvoření sazebnice podle standardů časopisu použijte verzi souboru pro grafické úpravy.<br />
3. Nahrajte upravené soubory do sekce Soubory sazebnic.<br />
4. Upozorněteč redaktora pomocí diskuse v produkční fázi, že sazebnice jsou hotové.<br />
<br />
{$contextName} URL: {$contextUrl}<br />
URL příspěvku: {$submissionUrl}<br />
Uživatelské jméno: {$participantUsername}<br />
<br />
Pokud nyní nemůžete tento úkol provést nebo máte nějaké dotazy, kontaktujte mě prosím. Děkujeme za Vaši pomoc našemu časopisu.',
  'emails.layoutRequest.description' => 'Tento email posílá editor sekce typografovi, aby mu oznámil, že mu byl přidělen úkol provést typografické úpravy příspěvku. Obsahuje informace o příspěvku a přístupu k němu.',
  'emails.layoutComplete.subject' => 'Sazebnice dokončeny',
  'emails.layoutComplete.body' => '{$editorialContactName}:<br />
<br />
Nyní jsou vytvořeny sazebnicové verze souborů pro příspěvek &quot;{$submissionTitle}&quot; pro {$contextName} a jsou připraveny pro korektury.<br />
<br />
Pokud máte nějaké otázky, kontaktujte mě prosím.<br />
<br />
{$participantName}',
  'emails.layoutComplete.description' => 'Tento email posílá typograf editorovi sekce, aby mu oznámil, že byl dokončen proces grafických úprav.',
  'emails.layoutAck.subject' => 'Poděkování za grafické úpravy ',
  'emails.layoutAck.body' => '{$participantName}:<br />
<br />
Děkujeme za přípravu sazebnicových formátů souborů příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Vaše práce představuje významnou pomoc pro náš časopis.<br />
<br />
{$editorialContactSignature}',
  'emails.layoutAck.description' => 'Tento email posílá editor sekce typografovi, aby mu poděkoval za dokončení procesu typografických úprav a ocenil jeho pomoc.',
  'emails.proofreadAuthorRequest.subject' => 'Žádost o korektury (pro autora)',
  'emails.proofreadAuthorRequest.body' => '{$authorName}:<br />
<br />
Váš příspěvek &quot;{$submissionTitle}&quot; pro {$contextName} nyní vyžaduje korektury. Postupujte podle následujících kroků:<br />
1. Klikněte níže na URL příspěvku.<br />
2. Přihlaste se do časopisu a prohlédněte si INSTRUKCE PRO KOREKTURY<br />
3. Klikněte na PROHLÉDNOUT KOREKTURY a zkontrolujte sazebnice jednoho nebo více použitých formátů.<br />
4. Vložte opravy (typografické a formátové) v Korekčních opravách.<br />
5. Uložte a odešlete opravy typografovi a korektorovi.<br />
6. Pošlete email DOKONČENO editorovi.<br />
<br />
URL příspěvku: {$submissionUrl}<br />
<br />
{$editorialContactSignature}',
  'emails.proofreadAuthorRequest.description' => 'Tento email posílá editor sekce autorovi, aby mu oznámil, že sazebnice příspěvku jsou připraveny pro korektury. Obsahuje informace o článku a přístupu k němu.',
  'emails.proofreadAuthorComplete.subject' => 'Korektury dokončeny (od autora)',
  'emails.proofreadAuthorComplete.body' => '{$editorialContactName}:<br />
<br />
Dokončil jsem korektury sazebnic mého příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Sazebnice jsou nyní připraveny na finální zásahy korektora a typografa.<br />
<br />
{$authorName}',
  'emails.proofreadAuthorComplete.description' => 'Tento email posílá autor korektorovi a editorovi, aby je informoval, že dokončil svou část korektur a že podrobnosti jsou uveden v komentáři k článku.',
  'emails.proofreadAuthorAck.subject' => 'Poděkování za korektury (pro autora)',
  'emails.proofreadAuthorAck.body' => '{$authorName}:<br />
<br />
Děkujeme za korektury sazebnic Vašeho příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Těšíme se, že Vaši práci brzy vydáme.<br />
<br />
Pokud se zapíšete do naší oznamovací služby, dostanete emailem obsah čísla časopisu, jakmile bude vydán. Pokud máte nějaké otázky, kontaktujte mě prosím.<br />
<br />
{$editorialContactSignature}',
  'emails.proofreadAuthorAck.description' => 'Tento email posílá editor sekce autorovi, aby mu poděkoval za dokončení úvodní korektury a jeho práci.',
  'emails.proofreadRequest.subject' => 'Žádost o korektury ',
  'emails.proofreadRequest.body' => '{$proofreaderName}:<br />
<br />
Příspěvek &quot;{$submissionTitle}&quot; pro {$contextName} nyní vyžaduje korektury. Postupujte podle nísledujících kroků:<br />
1. Klikněte níže na URL příspěvku.<br />
2. Přihlaste se do časopisu a prohlédněte si INSTRUKCE PRO KOREKTURY.<br />
3. Klikněte na PROHLÉDNOUT KOREKTURY a zkontrolujte sazebnice jednoho nebo více použitých formátů.<br />
4. Vložte opravy (typografické a formátové) v Korekčních opravách.<br />
5. Uložte a pošlete opravy typografovi.<br />
6. Pošlete email DOKONČENO editorovi.<br />
<br />
URL příspěvku: {$submissionUrl}<br />
Uživatelské jméno: {$proofreaderUsername}<br />
<br />
Pokud nyní nemůžete tento úkol udělat nebo máte nějaké otázky, kontaktujte mě prosím. Děkujeme za Vaši pomoc našemu časopisu.<br />
<br />
{$editorialContactSignature}',
  'emails.proofreadRequest.description' => 'Tento email posílá editor sekce korektorovi, aby ho požádal o korektury sazebnic příspěvku. Obsahuje informace o příspěvku a přístupu k němu.',
  'emails.proofreadComplete.subject' => 'Korektury dokončeny ',
  'emails.proofreadComplete.body' => '{$editorialContactName}:<br />
<br />
Dokončil jsem korektury sazebnic příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Sazbnice jsou nyní připraveny pro finální opravy prováděné typografem.<br />
<br />
{$proofreaderName}',
  'emails.proofreadComplete.description' => 'Tento email posílá korektor editorovi sekce, aby mu oznámil, že dokončil proces korekcí.',
  'emails.proofreadAck.subject' => 'Poděkování za korektury ',
  'emails.proofreadAck.body' => '{$proofreaderName}:<br />
<br />
Děkujeme za korektury sazebnic příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Vaše práce významně přispívá ke kvalitě tohoto časopisu.<br />
<br />
{$editorialContactSignature}',
  'emails.proofreadAck.description' => 'Tento email posílá editor sekce korektorovi, aby potvrdil dokončení procesu korektur a poděkoval mu za jeho pomoc.',
  'emails.proofreadLayoutComplete.subject' => 'Korektury dokončeny (od typografa)',
  'emails.proofreadLayoutComplete.body' => '{$editorialContactName}:<br />
<br />
Podle korektur byly opraveny sazebnice příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Tento příspěvek je nyní připraven k publikování.<br />
<br />
{$participantName}',
  'emails.proofreadLayoutComplete.description' => 'Tento email posílá typograf editorovi sekce, aby mu oznámil, že byla dokončena finální fáze korektur a článek je připraven k publikování.',
  'emails.proofreadLayoutAck.subject' => 'Poděkování za korektury (typografovi)',
  'emails.proofreadLayoutAck.body' => '{$participantName}:<br />
<br />
Děkujeme za dokončení korekčních oprav sazebnic příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Vaše práce představuje významnou pomoc našemu časopisu.<br />
<br />
{$editorialContactSignature}',
  'emails.proofreadLayoutAck.description' => 'Tento email posílá editor sekce typografovi, aby mu poděkoval za dokončení finální fáze korektur a poděkoval mu za jeho práci.',
  'emails.emailLink.subject' => 'Zajímavý článek',
  'emails.emailLink.body' => 'Myslím, že by Vás mohl zajímat článek &quot;{$submissionTitle}&quot; autora {$authorName} vydaný ve Vol {$volume}, No {$number} ({$year}) časopisu {$contextName} na adrese &quot;{$articleUrl}&quot;.',
  'emails.emailLink.description' => 'Tato emailová šablona umožňuje registrovanému čtenáři poslat informaci o článku někomu, koho by mohl zajímat. Je dostupná přes Nástroje pro čtení a musí být povolena manažerem časopisu na stránce Správa nástrojů pro čtení.',
  'emails.subscriptionNotify.subject' => 'Oznámení o předplatném',
  'emails.subscriptionNotify.body' => '{$subscriberName}:<br />
<br />
Nyní jste byl zaregistrován jako předplatitel v našem online systému pro správu časopisu {$contextName} s následujícím předplatným:<br />
<br />
{$subscriptionType}<br />
<br />
Pro přístup k obsahu, který je dostupný pouze předplatitelům, se jednoduše přihlašte Vaším uživatelským jménem &quot;{$username}&quot;.<br />
<br />
Jakmile se přihlásíte do systému, můžete kdykoliv upravit detaily svého profilu a heslo.<br />
<br />
Vězte prosím, že pokud máte institucionální předplatné, nemusí se uživatelé z vaší instituce přihlašovat, neboť jejich přístup k předplacenému obsahu bude automaticky ověřen systémem.<br />
<br />
Pokud máte nějaké dotazy, neváhejte mě kontaktovat<br />
<br />
{$subscriptionContactSignature}',
  'emails.subscriptionNotify.description' => 'Tento email informuje registrovaného čtenáře, že pro něj manažer vytvořil předplatné. Obsahuje URL časopisu a přístupové instrukce.',
  'emails.openAccessNotify.subject' => 'Nyní otevřen přístup k číslu',
  'emails.openAccessNotify.body' => 'Čtenáři:<br />
<br />
Časopis {$contextName} povolil otevřený přístup k následujícímu číslu. Zveme vás k prohlédnutí obsahu časopisu a návštěvě našich stránek ({$contextUrl}).<br />
<br />
Děkujeme za Vás pokračující zájem o naši práci<br />
{$editorialContactSignature}',
  'emails.openAccessNotify.description' => 'Tento email je posílán čtenářům, kteří požádali o zasílání upozornění na přechod čísla časopisu do otevřeného přístupu.',
  'emails.subscriptionBeforeExpiry.subject' => 'Oznámení o vypršení předplatného',
  'emails.subscriptionBeforeExpiry.body' => '{$subscriberName}:<br />
<br />
Vaše předplatné pro {$contextName} brzy vyprší.<br />
<br />
{$subscriptionType}<br />
Datum vypršení: {$expiryDate}<br />
<br />
Pro zajištění kontinuity přístupu k tomuto časopisu přejděte prosím na stránky časopisu a obnovte Vaše předplatné. Můžete se do systému přihlásit Vaším uživatelským jménem &quot;{$username}&quot;.<br />
<br />
Pokud máte nějaké otázky, neváhejte mě prosím kontaktovat.<br />
<br />
{$subscriptionContactSignature}',
  'emails.subscriptionBeforeExpiry.description' => 'Tento email informuje předplatitele, že jeho předplatné brzy vyprší. Obsahuje URL časopisu a instrukce pro přístup.',
  'emails.subscriptionAfterExpiry.subject' => 'Vypršelo předplatné',
  'emails.subscriptionAfterExpiry.body' => '{$subscriberName}:<br />
<br />
Vaše předplatné pro {$contextName} vypršelo.<br />
<br />
{$subscriptionType}<br />
Datum vypršení: {$expiryDate}<br />
<br />
Pro obnovení předplatného přejděte prosím na stránky časopisu. Do systému se můžete přihlásit Vaším uživatelským jménem &quot;{$username}&quot;.<br />
<br />
Pokud máte nějaké otázky, neváhejte mě prosím kontaktovat.<br />
<br />
{$subscriptionContactSignature}',
  'emails.subscriptionAfterExpiry.description' => 'Tento email informuje předplatitele, že jeho předplatné vypršelo. Obsahuje URL časopisu a instrukce pro přístup.',
  'emails.subscriptionAfterExpiryLast.subject' => 'Předplatné vypršelo – poslední připomínka',
  'emails.subscriptionAfterExpiryLast.body' => '{$subscriberName}:<br />
<br />
Vaše předplatné pro {$contextName} vypršelo.<br />
Vězte prosím, že toto je poslední připomínka, která Vám bude poslána.<br />
<br />
{$subscriptionType}<br />
Datum vypršení: {$expiryDate}<br />
<br />
Pro obnovení předplatného přejděte prosím na stránky časopisu. Do systému se můžete přihlásit Vaším uživatelským jménem &quot;{$username}&quot;.<br />
<br />
Pokud máte nějaké otázky, neváhejte mě prosím kontaktovat.<br />
<br />
{$subscriptionContactSignature}',
  'emails.subscriptionAfterExpiryLast.description' => 'Tento email informuje předplatitele, že jeho předplatné vypršelo. Obsahuje URL časopisu a instrukce pro přístup.',
  'emails.notification.subject' => 'Nové oznámení od {$siteTitle}',
  'emails.notification.body' => 'Máte nové oznámení od {$siteTitle}:<br />
<br />
{$notificationContents}<br />
<br />
Odkaz: {$url}<br />
<br />
{$principalContactSignature}',
  'emails.notification.description' => 'E-mail se odešle registrovaným uživatelům, kteří mají povolený příjem tohoto typu oznámení.',
  'emails.notificationMaillist.subject' => 'Nové oznámení od {$siteTitle}',
  'emails.notificationMaillist.body' => 'Máte nové oznámení od {$siteTitle}:<br />
--<br />
{$notificationContents}<br />
<br />
Odkaz: {$url}<br />
--<br />
<br />
Pokud chcete ukončit odebírání těchto informačních emalů, přejděte prosím na {$unsubscribeLink} a vložte vaši emailovou adresu a heslo.<br />
<br />
{$principalContactSignature}',
  'emails.notificationMaillist.description' => '',
  'emails.notificationMaillistWelcome.subject' => 'Vítejte na rezesílacím seznamu {$siteTitle}!',
  'emails.notificationMaillistWelcome.body' => 'Přihlásil jste se k odběru oznámení z {$siteTitle}.<br />
<br />
Pro potvrzení Vaší žádosti a přidání Vaší emailové adresy do rozesílacího seznamu klikněte prosím na tento odkaz: {$confirmLink}<br />
<br />
Pokud si přejete ukončit odebírání informačních emailů, přejděte prosím na {$unsubscribeLink} a vložte Vaši emailovou adresu a heslo.<br />
<br />
Vaše heslo pro zakázání informačních emailů je: {$password}<br />
<br />
{$principalContactSignature}',
  'emails.notificationMaillistWelcome.description' => 'Tento e-mail je odeslán neregistrovanému uživateli, který se právě zaregistroval do mailového seznamu oznámeními.',
  'emails.editorDecisionAccept.subject' => 'Rozhodnutí editora',
  'emails.editorDecisionAccept.body' => '{$authorName}:<br />
<br />
Učinili jsme rozhodnutí ohledně Vašeho příspěvku do {$contextName}, &quot;{$submissionTitle}&quot;.<br />
<br />
Naše rozhodnutí je: přijmout příspěvek k publikaci',
  'emails.editorDecisionAccept.description' => 'Tento e-mail od editora nebo editora sekce autorovi obsahuje informaci o konečném rozhodnutí o přijetí příspěvku.',
  'emails.editorDecisionRevisions.subject' => 'Rozhodnutí editora',
  'emails.editorDecisionRevisions.body' => '{$authorName}:<br />
<br />
Učinili jsme rozhodnutí ohledně Vašeho příspěvku do {$contextName}, &quot;{$submissionTitle}&quot;.<br />
<br />
Naše rozhodnutí je: požadujeme přepracování',
  'emails.editorDecisionRevisions.description' => 'Tento e-mail od editora nebo editora sekce upozorňuje autora o rozhodnutí „požadujeme recenzi“.',
  'emails.editorDecisionResubmit.subject' => 'Rozhodnutí editora',
  'emails.editorDecisionResubmit.body' => '{$authorName}:<br />
<br />
Učinili jsme rozhodnutí ohledně Vašeho příspěvku do {$contextName}, &quot;{$submissionTitle}&quot;.<br />
<br />
Naše rozhodnutí je: znovu odeslat k recenzi',
  'emails.editorDecisionResubmit.description' => 'Tento e-mail od editora nebo editora sekce upozorňuje autora na konečné rozhodnutí „opětovné podání“.',
  'emails.editorDecisionDecline.subject' => 'Rozhodnutí editora',
  'emails.editorDecisionDecline.body' => '{$authorName}:<br />
<br />
Učinili jsme rozhodnutí ohledně Vašeho příspěvku do {$contextName}, &quot;{$submissionTitle}&quot;.<br />
<br />
Naše rozhodnutí je: odmítnout příspěvek',
  'emails.editorDecisionDecline.description' => 'Tento e-mail od editora nebo editora sekce informuje autora o konečném rozhodnutí o odmítnutí jeho příspěvku.',
  'emails.subscriptionPurchaseIndl.subject' => 'Zakoupení předplatného: Individuální',
  'emails.subscriptionPurchaseIndl.body' => 'Bylo online zakoupeno individuální předplatné pro {$contextName} s následujícími detaily.<br />
<br />
Typ předplatného:<br />
{$subscriptionType}<br />
<br />
Uživatel:<br />
{$userDetails}<br />
<br />
Informace o členství (pokud byla uvedena):<br />
{$membership}<br />
<br />
Pro zobrazení nebo editaci tohoto předplatného použijte prosím následující URL odkaz.<br />
<br />
URL předplatného: {$subscriptionUrl}<br/>
',
  'emails.subscriptionPurchaseIndl.description' => 'Tento e-mail upozorňuje Správce předplatného, že individuální předplatné bylo zakoupeno online. Poskytuje souhrnné informace o předplatném a rychlý přístup k zakoupenému předplatnému.',
  'emails.subscriptionPurchaseInstl.subject' => 'Zakoupení předplatného: Institucionální',
  'emails.subscriptionPurchaseInstl.body' => 'Bylo online zakoupeno institucionální předplatné pro {$contextName} s následujícími detaily. Pro aktivaci tohoto předplatného použijte prosím uvedený URL odkaz a nastavte stav předplatného na \'Aktivní\'..<br />
<br />
Typ předplatného:<br />
{$subscriptionType}<br />
<br />
Instituce:<br />
{$institutionName}<br />
{$institutionMailingAddress}<br />
<br />
Doména (pokud byla uvedena):<br />
{$domain}<br />
<br />
IP rozsah (pokud byl uveden):<br />
{$ipRanges}<br />
<br />
Kontaktní osoba:<br />
{$userDetails}<br />
<br />
Informace o členství (pokud byly uvedeny):<br />
{$membership}<br />
<br />
Pro zobrazení nebo editaci tohoto předplatného použijte prosím následující URL.<br />
<br />
URL předplatného: {$subscriptionUrl}<br />
',
  'emails.subscriptionPurchaseInstl.description' => 'Tento e-mail upozorňuje Správce předplatného, že bylo zakoupeno institucionální předplatné online. Poskytuje souhrnné informace o předplatném a rychlý přístup k zakoupenému předplatnému.',
  'emails.subscriptionRenewIndl.subject' => 'Obnovení předplatného: Individuální',
  'emails.subscriptionRenewIndl.body' => 'Bylo online obnoveno individuální předplatné pro {$contextName} s následujícími detaily.<br />
<br />
Typ předplatného:<br />
{$subscriptionType}<br />
<br />
Uživatel:<br />
{$userDetails}<br />
<br />
Informace o členství (pokud byly uvedeny):<br />
{$membership}<br />
<br />
Pro zobrazení nebo editaci tohoto předplatného použijte prosím následující URL.<br />
<br />
URL předplatného: {$subscriptionUrl}<br />
',
  'emails.subscriptionRenewIndl.description' => 'Tento e-mail upozorňuje správce předplatného, že jednotlivé předplatné bylo obnoveno online. Poskytuje souhrnné informace o předplatném a rychlý přístup k obnovenému předplatnému.',
  'emails.subscriptionRenewInstl.subject' => 'Obnovení předplatného: Institucionální',
  'emails.subscriptionRenewInstl.body' => 'Bylo online obnoveno institucionální předplatné pro {$contextName} s následujícími detaily.<br />
<br />
Typ předplatného:<br />
{$subscriptionType}<br />
<br />
Instituce:<br />
{$institutionName}<br />
{$institutionMailingAddress}<br />
<br />
Doména (pokud byla uvedena):<br />
{$domain}<br />
<br />
Rozsah IP adres (pokud byl uveden):<br />
{$ipRanges}<br />
<br />
Kontaktní osoba:<br />
{$userDetails}<br />
<br />
Informace o členství (pokud byla uvedena):<br />
{$membership}<br />
<br />
Pro zobrazení nebo editaci tohoto předplatného použijte prosím následující URL.<br />
<br />
URL předplatného: {$subscriptionUrl}<br />
',
  'emails.subscriptionRenewInstl.description' => 'Tento e-mail informuje správce předplatného o obnovení institucionálního předplatného online. Poskytuje souhrnné informace o předplatném a rychlý přístup k obnovenému předplatnému.',
  'emails.citationEditorAuthorQuery.subject' => 'Zpracování citací',
  'emails.citationEditorAuthorQuery.body' => 'Vážený(á) {$authorFirstName},<br />
<br />
Můžete, prosím, ověřit, nebo potvrdit správnou citaci pro následující referenci z vašeho článku {$submissionTitle}:<br />
<br />
{$rawCitation}<br />
<br />
Děkuji!<br />
<br />
{$userFirstName}<br />
Redaktor {$contextName}<br />
',
  'emails.citationEditorAuthorQuery.description' => 'Tento e-mail umožňuje redaktorům vyžádat si další informace o referencích od autorů.',
  'emails.editorDecisionSendToExternal.subject' => 'Rozhodnutí editora',
  'emails.editorDecisionSendToExternal.body' => 'Vážený(á) {$authorName}:<br />
<br />
Dosáhli jsme rozhodnutí, které se týká vašeho příspěvku do {$contextName}, &quot;{$submissionTitle}&quot;.<br />
<br />
Naše rozhodnutí je: odeslat k recenzi<br />
<br />
Webová adresa příspěvku: {$submissionUrl}',
  'emails.editorDecisionSendToExternal.description' => 'Tento email od editora nebo editora sekce autorovi sděluje, že jejich příspěvek je odesílán k externí recenzi.',
  'emails.editorDecisionSendToProduction.subject' => 'Rozhodnutí editora',
  'emails.editorDecisionSendToProduction.body' => '{$authorName}:<br />
<br />
Editace vašeho příspěvku, &quot;{$submissionTitle},&quot; je hotová.  Posíláme ho nyní do produkční fáze.<br />
<br />
Webová adresa příspěvku: {$submissionUrl}',
  'emails.editorDecisionSendToProduction.description' => 'Tento e-mail od editora nebo editora sekce autorovi oznamuje, že jejich podání je odesláno do produkční fáze.',
  'emails.giftAvailable.subject' => '{$giftNoteTitle}',
  'emails.giftAvailable.body' => 'Vážený(á) {$recipientFirstName},<br />
<br />
{$buyerFullName} by vám rád dal dar v časopise {$giftJournalName}:<br />
<br />
{$giftDetails}<br />
<br />
<br />
{$giftNote}<br />
<br />
<br />
V následujícím emailu dostanete podrobnosti včetně detailu o loginu včetně pokynů, jak si dar převzít.<br />
<br />
Doufáme, že vám dárek udělá radost!<br />
<br />
{$giftContactSignature}<br />',
  'emails.giftAvailable.description' => 'Tento e-mail oznamuje příjemci daru, že byl zakoupen a je k dispozici k vyzvednutí.',
  'emails.giftUserLogin.subject' => 'Vyzvednutí dárku: Detaily loginu',
  'emails.giftUserLogin.body' => 'Vážený(á) {$recipientFirstName},<br />
<br />
{$buyerFullName} by s vámi rád sdílel(a) dárek v rámci časopisu {$giftJournalName}:<br />
<br />
{$giftDetails}<br />
<br />
<br />
K vyzvednutí vašeho dárku se, prosím, zalogujte na webových stránkách časopisu <a href="{$giftUrl}">{$giftUrl}</a><br />
<br />
Vaše uživatelské jméno je: {$username}<br />
<br />
Doufáme, že váš dárek potěší!<br />
<br />
{$giftContactSignature}<br />',
  'emails.giftUserLogin.description' => 'Tento e-mail sděluje příjemci daru jeho přihlašovací údaje.',
  'emails.giftUserRegister.subject' => 'Vyzvednutí dárku: Detaily loginu',
  'emails.giftUserRegister.body' => 'Vážený(á) {$recipientFirstName},<br />
<br />
{$buyerFullName} by s vámi rád sdílel dárek v rámci časopisu {$giftJournalName}:<br />
<br />
{$giftDetails}<br />
<br />
<br />
K vyzvednutí dárku se, prosím, zalogujte na stránkách časopisu <a href="{$giftUrl}">{$giftUrl}</a><br />
<br />
Vaše uživatelské jméno: {$username}<br />
Vaše heslo: {$password}<br />
<br />
Jakmile se zalogujete, můžete kdykoliv změnit heslo.<br />
<br />
Doufáme, že vás dárek potěší!<br />
<br />
{$giftContactSignature}<br />',
  'emails.giftUserRegister.description' => 'Tento e-mail oznamuje příjemci daru své přihlašovací údaje k novému účtu.',
  'emails.notificationCenterDefault.subject' => 'Zpráva týkající se {$contextName}',
  'emails.notificationCenterDefault.body' => 'Vložte, prosím, vaši zprávu.',
  'emails.notificationCenterDefault.description' => 'Výchozí (prázdná) zpráva použitá v nástroji List Builder Message Center Message Builder.',
  'emails.reviewRequestAttachedSubsequent.subject' => 'Požadavek na recenzi článku',
  'emails.reviewRequestAttachedSubsequent.body' => '{$reviewerName}:<br />
<br />
Tento email se týká rukopisu &quot;{$submissionTitle},&quot; předkládaného autorem {$contextName}.<br />
<br />
Na základě recenze předchozí verze rukopisu podali autoři nyní opravenou verzi tohoto článku. Byly bychom rádi, kdybyste nám pomohli tuto revidovanou verzi ohodnotit.<br />
<br />
Pokyny pro recenzenty tohoto časopisu jsou připojeny níže, a samotný opravený příspěvek je vložen do tohoto emailu jako příloha. Vaše recenze opraveného příspěvku spolu s vašemi doporučeními by měla být odeslána emailem do {$reviewDueDate}.<br />
<br />
Prosíme vás, abyste v odpovědi na tento email uvedl(a) do {$responseDueDate}, zda jste schopen(a) a ochoten(na) udělat tuto recenzi.<br />
<br />
Děkujeme předem za vaši ochotu.<br />
<br />
{$editorialContactSignature}<br />
<br />
<br />
Pokyny pro recenzenty<br />
<br />
{$reviewGuidelines}<br />
',
  'emails.reviewRequestAttachedSubsequent.description' => 'Tento email je zaslán Editorem sekce recenzentovi, aby ho požádal o přijetí nebo odmítnutí opakované recenze příspěvku v druhém či dalším kole recenzního řízení. Zahrnuje příspěvek jako přílohu. Tato zpráva se používá v případě, že je v části Správa> Nastavení> Pracovní postup> Kontrola vybrána možnost Prověřování příloh emailu. (Jinak viz REVIEW_REQUEST_SUBSEQUENT.)',
  'emails.submissionAckNotUser.subject' => 'Poděkování za příspěvek',
  'emails.submissionAckNotUser.body' => 'Dobrý den,<br />
<br />
{$submitterName} nahrál rukopis, &quot;{$submissionTitle}&quot; do časopisu {$contextName}. <br />
<br />
Pokud máte nějaké dotazy, kontaktujte mne, prosím. Děkujeme vám za využívání našeho příspěvku pro vaše práce.<br />
<br />
{$editorialContactSignature}',
  'emails.submissionAckNotUser.description' => 'Tento email, je-li povolen, je automaticky odeslán ostatním autorům článku, kteří nejsou uživateli v rámci OJS uvedenými během procesu podání příspěvku.',
  'emails.revisedVersionNotify.subject' => 'Nahrána opravená verze příspěvku',
  'emails.revisedVersionNotify.body' => 'Editoři:<br />
<br />
Opravená verze příspěvku &quot;{$submissionTitle}&quot; byla nahrána autorem {$authorName}.<br />
<br />
Webová adresa příspěvku: {$submissionUrl}<br />
<br />
{$editorialContactSignature}',
  'emails.revisedVersionNotify.description' => 'Tento email je automaticky odeslán příslušnému editorovi článku, pokud autor odešle revidovanou verzi článku.',
  'emails.reviewRequestSubsequent.subject' => 'Požadavek na recenzi článku',
  'emails.reviewRequestSubsequent.body' => '{$reviewerName}:<br />
<br />
Tento email se týká rukopisu &quot;{$submissionTitle},&quot; podávaného autorem {$contextName}.<br />
<br />
Na základě recenzí předchozí verze nahráli autoři opravenou verzi tohoto příspěvku. Byli bychom rádi, kdybyste nám pomohl(a) tuto verzi zkontrolovat.<br />
<br />
Zalogujte se, prosím, do {$responseDueDate} a dejte nám vědět, zda jste schopen(a) a ochoten(a) udělat recenzi této opravené verze, na webu máte také dostupný přístup k článku a najdete tam také odkaz k odeslání své recenze a formulář pro vaše doporučení. Webová stránka je {$contextUrl}<br />
<br />
Termín na dokončení recenze je  {$reviewDueDate}.<br />
<br />
Pokud jste zapomněli svůj login a heslo na stránky časopisu, můžete použít následující odkaz na reset vašeho hesla (které vám poté bude zasláno spolu s loginem). {$passwordResetUrl}<br />
<br />
Adresa příspěvku: {$submissionReviewUrl}<br />
<br />
Děkujeme mnohokrát za spolupráci.<br />
<br />
{$editorialContactSignature}<br />
<br />
&quot;{$submissionTitle}&quot;<br />
<br />
{$submissionAbstract}',
  'emails.reviewRequestSubsequent.description' => 'Tento email od editora sekce recenzentovi požaduje, aby recenzent přijal nebo odmítl úlohu přezkoumání příspěvku pro druhé nebo další kolo recenzí. Poskytuje informace o podání, jako je název a abstrakt, datum dokončení recenze a přístup k samotnému příspěvku. Tato zpráva se používá v případě, že je v části Správa> Nastavení> Pracovní postup> Kontrola vybrána možnost Standardní kontrola. (Jinak viz REVIEW_REQUEST_ATTACHED_SUBSEQUENT.)',
  'emails.reviewRequestRemindAutoOneclick.subject' => 'Požadavek na recenzi článku',
  'emails.reviewRequestRemindAutoOneclick.body' => '{$reviewerName}:<br />
Rádi bychom se vám připomněli s naší prosbou o recenzi příspěvku &quot;{$submissionTitle},&quot; do časopisu {$contextName}. Rádi bychom obdrželi vaši odpověď do {$responseDueDate}. Tento email byl automaticky vygenerován a zaslán vám, s ohledem na to, že termín již uplynul. 
<br />
Věříme, že budete dobrým recenzentem tohoto rukopisu. Abstrakt rukopisu je vložen níže. Budeme velmi rádi, pokud se ujmete této důležité úlohy.<br />
<br />
Zalogujte se, prosím, na webové stránky časopisu a dejte nám vědět, jestli přijmete pozvání k recenzi. Na stránkách máte přístup jak k oznámení vašeho rozhodnutí o recenzi, ale také tam máte přístup k vlastnímu rukopisu a můžete tam nahrát recenzovanou verzi článku a doporučení recenzenta.<br />
<br />
Datum pro dokončení recenze je {$reviewDueDate}.<br />
<br />
Webová adresa příspěvku: {$submissionReviewUrl}<br />
<br />
Děkujeme mnohokrát za spolupráci.<br />
<br />
{$editorialContactSignature}<br />
<br />
&quot;{$submissionTitle}&quot;<br />
<br />
{$submissionAbstract}',
  'emails.reviewRequestRemindAutoOneclick.description' => 'Tento email je automaticky odeslán, jakmile uplyne datum stanovené pro reakci  recenzenta (viz Možnosti kontroly v sekci Nastavení> Pracovní postup> Kontrola) a je povolen přístup jednoho recenzenta k recenzím. Plánované úlohy musí být povoleny a konfigurovány (viz konfigurační soubor webu).',
  'emails.reviewRequestRemindAuto.subject' => 'Připomenutí požadavku na recenzi článku',
  'emails.reviewRequestRemindAuto.body' => '{$reviewerName}:<br />
Rádi bychom se vám připomněli s naší prosbou o recenzi rukopisu &quot;{$submissionTitle},&quot; pro časopis {$contextName}. Rádi bychom dostali vaši odpověď do  {$responseDueDate}., Tento email byl vygenerován automaticky, s ohledem na to, že tento termín již uplynul.
<br />
Věříme, že byste byl výborný recenzent tohoto rukopisu. Níže najdete abstrakt tohoto příspěvku a doufáme, že se ujmete tohoto důležitého úkolu.<br />
<br />
Zalogujte se, prosím, na stránkách časopisu  a dejte nám vědět, zda jste schopen(a) a ochoten(a) udělat recenzi této opravené verze, na webu máte také dostupný přístup k článku a najdete tam také odkaz k odeslání své recenze a formulář pro vaše doporučení. Webová stránka je {$contextUrl}<br />
<br />
Termín pro odevzdání samotné recenze je {$reviewDueDate}.<br />
<br />
Pokud jste zapomněli svůj login a heslo na stránky časopisu, můžete použít následující odkaz na reset vašeho hesla (které vám poté bude zasláno spolu s loginem). {$passwordResetUrl}<br />
<br />
Webová adresa příspěvku: {$submissionReviewUrl}<br />
<br />
Děkujeme vám mnohokrát za spolupráci.<br />
<br />
{$editorialContactSignature}<br />
<br />
&quot;{$submissionTitle}&quot;<br />
<br />
{$submissionAbstract}',
  'emails.reviewRequestRemindAuto.description' => 'Tento email se automaticky odesílá, jakmile uplyne datum splatnosti potvrzení recenzenta (viz Možnosti kontroly v sekci Nastavení> Pracovní postup> Kontrola) a přístup k recenznímu kontrole je zakázán. Plánované úlohy musí být povoleny a konfigurovány (viz konfigurační soubor webu).',
  'emails.reviewRequestOneclickSubsequent.subject' => 'Požadavek na recenzi článku',
  'emails.reviewRequestOneclickSubsequent.body' => '{$reviewerName}:<br />
<br />
Tento email se týká rukopisu &quot;{$submissionTitle},&quot; podávaného autorem {$contextName}.<br />
<br />
Na základě recenzí předchozí verze nahráli autoři opravenou verzi tohoto příspěvku. Byli bychom rádi, kdybyste nám pomohl(a) tuto verzi zkontrolovat.<br />
<br />
Zalogujte se, prosím do  {$responseDueDate} na stránky našeho časopisu a dejte nám vědět zda jste schopen(a) a ochoten(a) udělat pro nás recenzi. Na webu najdete také přístup k vlastnímu příspěvku a můžete tam nahrát obsah recenze a doporučení autorovi.<br />
<br />
Samotná recenze by měla být odevzdána do {$reviewDueDate}.<br />
<br />
Webová adresa příspěvku: {$submissionReviewUrl}<br />
<br />
Děkujeme mnohokrát za spolupráci.<br />
<br />
{$editorialContactSignature}<br />
<br />
&quot;{$submissionTitle}&quot;<br />
<br />
{$submissionAbstract}',
  'emails.reviewRequestOneclickSubsequent.description' => 'Tento e-mail od editoru sekce k recenzentovi požaduje, aby recenzent přijal nebo odmítl úlohu přezkoumání příspěvku pro druhé nebo větší kolo recenzí. Poskytuje informace o podání, jako je název a abstrakt, datum splatnosti kontroly a přístup k samotnému podání. Tato zpráva se používá v případě, že je ve Správci> Nastavení> Pracovní postup> Kontrola vybrán proces Standardní kontrola a je povolen přístup jednoho recenzenta k recenzím.',
  'emails.editorDecisionInitialDecline.subject' => 'Rozhodnutí redaktora',
  'emails.editorDecisionInitialDecline.body' => '
			{$authorName}:<br />
<br />
Dosáhli jsme rozhodnutí ohledně vašeho příspěvku pro {$contextName}, &quot;{$submissionTitle}&quot;.<br />
<br />
Naše rozhodnutí je: Odmítnout příspěvek',
  'emails.editorDecisionInitialDecline.description' => 'Tento e-mail se pošle autorovi, pokud redaktor odmítne příspěvek již před recenzním řízením',
  'emails.editorRecommendation.subject' => 'Doporučení redaktora',
  'emails.editorRecommendation.body' => '{$editors}:<br />
<br />
Doporučení k příspěvku {$contextName}, &quot;{$submissionTitle}&quot; je: {$recommendation}',
  'emails.editorRecommendation.description' => 'Tento e-mail je od redaktora nebo redaktora sekce pro odpovědného redaktora nebo pro redaktory sekcí - informuje o konečném doporučení ohledně příspěvku.',
  'emails.statisticsReportNotification.description' => 'Tento e-mail je automaticky zasílán měsíčně měsíčně editorům a správcům časopisů, aby jim poskytl přehled o stavu systému.',
  'emails.statisticsReportNotification.body' => '
{$name}, <br />
<br />
Vaše zpráva o stavu časopisu za {$month}, {$year} je nyní k dispozici. Vaše klíčové statistiky pro tento měsíc jsou níže. <br />
<ul>
 <li>Nová podání tento měsíc: {$newSubmissions}</li>
 <li>Odmítnuté příspěvky tento měsíc: {$declinedSubmissions}</li>
 <li>Přijaté příspěvky tento měsíc: {$acceptedSubmissions}</li>
 <li>Celkový počet příspěvků v systému: {$totalSubmissions}</li>
</ul>
Chcete-li zobrazit podrobnější <a href="{$editorialStatsLink}">statistiky redakce</a> a <a href="{$publicationStatsLink}">statistiky publikovaných článků</a>, přihlaste se do časopisu. Úplná kopie statistiky redakce tohoto měsíce je připojena. <br />
<br />
S pozdravem <br />
{$principalContactSignature}',
  'emails.statisticsReportNotification.subject' => 'Aktivita redakce pro {$month}, {$year}',
  'emails.reviewReinstate.description' => 'Tento e-mail je odeslán editorem sekce recenzentovi, který právě provádí recenzi příspěvku, aby mu oznámil, že zrušená recenze byla obnovena.',
  'emails.reviewReinstate.body' => '{$reviewerName}:<br />
<br />
Rádi bychom obnovili naši žádost o kontrolu příspěvku &quot;{$submissionTitle},&quot; pro {$contextName}. Doufáme, že budete moci pomoci s procesem recenzí tohoto časopisu. <br />
<br />
Pokud máte nějaké dotazy, kontaktujte mě.',
  'emails.reviewReinstate.subject' => 'Žádost o recenzi byla obnovena',
  'emails.announcement.description' => 'Tento email je posílán, pokud je vytvořeno nové oznámení.',
  'emails.announcement.body' => '<b>{$title}</b><br />
<br />
{$summary}<br />
<br />
Navštivte naši webovou stránku, pokud si chcete přečíst <a href="{$url}">plný text</a>.',
  'emails.announcement.subject' => '{$title}',
);
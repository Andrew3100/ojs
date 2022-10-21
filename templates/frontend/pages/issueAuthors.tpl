{include file="frontend/components/header.tpl" pageTitleTranslated=$issueIdentification}



<br>
<br>
<div class="container">
    <div class="row">
        <div class="col-4 text-center">
            {* левый блок *}
            <ul class="list-group">
                <li class="list-group-item" style="background-color:  "><span><a href="/index.php/sr/submission/wizard/"><b>Подать статью</b></a></span></li>
                <li class="list-group-item" style="background-color:  "><span><b>Мои статьи</b></span></li>
                <li class="list-group-item" style="background-color:  "><span><b>Публикационная этика</b></span></li>
                <li class="list-group-item" style="background-color:  "><span><b>Правила подачи статей</b></span></li>
            </ul>
        </div>
        <div class="col-8">
            {* правый блок *}

                <div class="accordion" id="accordionExample">
                    {$i = 0}
                    {foreach from=$rules_header item="letter"}
                    <div class="accordion-item" style="background-color:  ">
                        <h2 class="accordion-header" id="h2_{$rules_id[$i]}">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#div_{$rules_id[$i]}" aria-expanded="false" aria-controls="div_{$rules_id[$i]}">
                                {$letter}
                            </button>
                        </h2>
                        <div id="div_{$rules_id[$i]}" class="accordion-collapse collapse" aria-labelledby="h2_{$rules_id[$i]}" data-bs-parent="#accordionExample">
                            <b><div class="accordion-body" style="color:">
                                <span>{$rules_body[$i]}</span>
                                </div></b>
                        </div>
                    </div>
                        {$i = $i + 1}
                    {/foreach}
                </div>

        </div>
    </div>
</div>


<br>
<br>

{include file="frontend/components/footer.tpl"}

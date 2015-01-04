<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if}>
{include file="header/head.tpl"}
<body>
{if $USERMASQUERADING}<div class="sitemessage"><img src="{theme_url filename='images/icon_problem.gif'}" alt="">{$masqueradedetails} {$becomeyouagain|safe}</div>{/if}
{if $SITECLOSED}<div class="sitemessage center">{if $SITECLOSED == 'logindisabled'}{str tag=siteclosedlogindisabled section=mahara arg1="`$WWWROOT`admin/upgrade.php"}{else}{str tag=siteclosed}{/if}</div>{/if}
<div id="container">
    <div id="loading-box"></div>
    <div id="top-wrapper">
        <h1 id="site-logo">E-portfolio - Univerzita Karlova v Praze, Pedagogická fakulta</h1>
{include file="header/topright.tpl"}
{include file="header/navigation.tpl"}
		<div class="cb"></div>
    </div>
    <div id="mainmiddlewrap">
        <div id="mainmiddle">
            <div id="{if $SIDEBARS}{if $SIDEBLOCKS.right}main-wrapper-narrow-right{else}main-wrapper-narrow-left{/if}{else}main-wrapper{/if}">
                    <div id="main-column" class="main-column{if $SIDEBARS} main-column-narrow{/if}{if $selected == 'content'} editcontent{/if}">
                    <div id="main-column-container">
                        {dynamic}{insert_messages}{/dynamic}
{if isset($PAGEHEADING)}
                       <h1>{$PAGEHEADING}{if $PAGEHELPNAME}<span class="page-help-icon">{$PAGEHELPICON|safe}</span>{/if}</h1>
{/if}

{if $SUBPAGENAV}{if $SUBPAGETOP}
                       {include file=$SUBPAGETOP}
{/if}
{* Tabs and beginning of page container for group info pages *}
                       <div class="tabswrap">
                           <ul class="in-page-tabs">
{foreach from=$SUBPAGENAV item=item}
                               <li {if $item.selected}class="current-tab"{/if}><a {if $item.selected}class="current-tab" {/if}href="{$WWWROOT}{$item.url}">{$item.title}<span class="accessible-hidden">({str tag=tab}{if $item.selected} {str tag=selected}{/if})</span></a></li>
{/foreach}
                           </ul>
                       </div>
                        <div class="subpage">
{/if}

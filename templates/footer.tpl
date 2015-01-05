{if $SUBPAGENAV}
                        </div><!--end subpage rel-->
{/if}
                    </div><!-- end main-column-container -->
                    <div class="cl"></div>
                </div><!-- end main-column -->
{if $SIDEBARS && $SIDEBLOCKS.right}
                <div id="right-column" class="sidebar">
{include file="sidebar.tpl" blocks=$SIDEBLOCKS.right}
                </div>
{/if}
{if $SIDEBARS && $SIDEBLOCKS.left}
                <div id="left-column" class="sidebar">
{include file="sidebar.tpl" blocks=$SIDEBLOCKS.left}
                </div>
{/if}
				<div class="cb"></div>
        </div><!-- main-wrapper -->
    </div><!-- mainmiddle -->
    </div><!-- mainmiddlewrap -->
    <div id="footer-wrap">
        <div id="footer-inner-wrap">			
			<div id="footernav">
			{foreach from=$FOOTERMENU item=item name=footermenu}
			  {if !$.foreach.footermenu.first}| {/if}<a href="{$WWWROOT}{$item.url}">{$item.title}</a>
			{/foreach}
			</div>
			<!-- there is a div id="performance-info" wrapping this -->{mahara_performance_info}
			<div id="powered-by">
				<a id="powered-by-mahara" href="http://mahara.org/"><img src="{theme_url filename='images/powered-by-mahara.png'}" border="0" alt="Mahara"></a>
				<a id="powered-by-umimto" href="http://umim.to/about.php"><img src="{theme_url filename='images/powered-by-umimto.png'}" border="0" alt="UMIM.TO"></a>
			</div>
			<div id="version">{mahara_version}</div>
			<div class="cb"></div>
		</div>
    </div>
</div>
</body>
</html>

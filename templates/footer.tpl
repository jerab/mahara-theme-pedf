{if $GROUP}
                        </div><!--end group-->
{/if}
                    </div>
                </td>
{if $SIDEBARS && $SIDEBLOCKS.right}
                <td id="right-column" class="sidebar">
{include file="sidebar.tpl" blocks=$SIDEBLOCKS.right}
                </td>
{/if}
            </tr>
        </tbody>
    </table>
    <div id="footer-wrap">
        <div id="powered-by">
            <a id="powered-by-mahara" href="http://mahara.org/"><img src="{theme_url filename='images/powered-by-mahara.png'}" border="0" alt="Mahara"></a>
            <a id="powered-by-umimto" href="http://umim.to/about.php"><img src="{theme_url filename='images/powered-by-umimto.png'}" border="0" alt="UMIM.TO"></a>
        </div>
        <div id="footernav">
        {foreach from=$FOOTERMENU item=item name=footermenu}
          {if !$.foreach.footermenu.first}| {/if}<a href="{$WWWROOT}{$item.url}">{$item.title}</a>
        {/foreach}
        </div>
		<!-- there is a div id="performance-info" wrapping this -->{mahara_performance_info}
		<div id="version">{mahara_version}</div>
		<div class="cb"></div>
    </div>
</div>
</body>
</html>
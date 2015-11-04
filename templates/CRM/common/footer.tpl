{*
 +--------------------------------------------------------------------+
 | Copyright CiviCRM LLC. All rights reserved.                        |
 |                                                                    |
 | This work is published under the GNU AGPLv3 license with some      |
 | permitted exceptions and without any warranty. For full license    |
 | and copyright information, see https://civicrm.org/licensing       |
 +--------------------------------------------------------------------+
*}
{if call_user_func(array('CRM_Core_Permission','check'), 'access CiviCRM')}
  {include file="CRM/common/accesskeys.tpl"}
  {if !empty($contactId)}
    {include file="CRM/common/contactFooter.tpl"}
  {/if}

  <div class="crm-footer" id="civicrm-footer">
    {crmVersion assign=version}
    {ts}Powered by the Progressive Technology Project &amp; built on CiviCRM{/ts} <a href="https://github.com/civicrm/civicrm-core/blob/{$version}/release-notes/{$version}.md">{$version}</a>.
    {ts 1='http://www.gnu.org/licenses/agpl-3.0.html'}CiviCRM is openly available under the <a href='%1'>GNU AGPL License</a>.{/ts}<br/>
    <a href="mailto:support@progressivetech.org">{ts}Contact support{/ts}</a> &nbsp; &nbsp;
    <a href="https://www.youtube.com/playlist?list=PLE5F8CFD9F95DD6D0&amp;feature=plcp">{ts}See video tutorials{/ts}</a> &nbsp; &nbsp;
    View online documentation from <a href="https://docs.civicrm.org/">{ts}CiviCRM{/ts}</a> and <a href="https://network.progressivetech.org/">PTP</a> &nbsp; &nbsp;
    <a href="https://ptp.ourpowerbase.net/GetPowerBase">{ts}Get PowerBase{/ts}</a> &nbsp; &nbsp;
  </div> 
  {include file="CRM/common/notifications.tpl"}
{/if}

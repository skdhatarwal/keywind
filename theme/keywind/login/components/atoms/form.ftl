<#macro kw rest...>
  <form
    class="m-0 space-y-2"

    <#list rest as attrName, attrValue>
      ${attrName}="${attrValue}"
    </#list>
  >
    <#nested>
  </form>
</#macro>

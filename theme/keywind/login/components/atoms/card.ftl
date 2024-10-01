<#macro kw content="" footer="" header="">
  <div class="bg-white p-8 rounded-lg space-y-6">
    <#if header?has_content>
      <div class="space-y-1">
        ${header}
      </div>
    </#if>
    <#if content?has_content>
      <div class="space-y-2">
        ${content}
      </div>
    </#if>
    <#if footer?has_content>
      <div class="space-y-1">
        ${footer}
      </div>
    </#if>
  </div>
</#macro>

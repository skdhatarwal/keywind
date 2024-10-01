<#import "/assets/providers/providers.ftl" as providerIcons>

<#macro kw providers=[]>
  <div class="text-md font-bold">
    ${msg("identity-provider-login-label")}
  </div>
  <div class="flex flex-col items-center justify-center">
    <#list providers as provider>
      <#switch provider.alias>
        <#case "apple">
          <#assign colorClass="hover:bg-provider-apple/10">
          <#break>
        <#case "bitbucket">
          <#assign colorClass="hover:bg-provider-bitbucket/10">
          <#break>
        <#case "discord">
          <#assign colorClass="hover:bg-provider-discord/10">
          <#break>
        <#case "facebook">
          <#assign colorClass="hover:bg-provider-facebook/10">
          <#break>
        <#case "github">
          <#assign colorClass="hover:bg-provider-github/10">
          <#break>
        <#case "gitlab">
          <#assign colorClass="hover:bg-provider-gitlab/10">
          <#break>
        <#case "google">
          <#assign colorClass="hover:bg-provider-google/10">
          <#break>
        <#case "instagram">
          <#assign colorClass="hover:bg-provider-instagram/10">
          <#break>
        <#case "linkedin-openid-connect">
          <#assign colorClass="hover:bg-provider-linkedin/10">
          <#break>
        <#case "microsoft">
          <#assign colorClass="hover:bg-provider-microsoft/10">
          <#break>
        <#case "oidc">
          <#assign colorClass="hover:bg-provider-oidc/10">
          <#break>
        <#case "openshift-v3">
          <#assign colorClass="hover:bg-provider-openshift/10">
          <#break>
        <#case "openshift-v4">
          <#assign colorClass="hover:bg-provider-openshift/10">
          <#break>
        <#case "paypal">
          <#assign colorClass="hover:bg-provider-paypal/10">
          <#break>
        <#case "slack">
          <#assign colorClass="hover:bg-provider-slack/10">
          <#break>
        <#case "stackoverflow">
          <#assign colorClass="hover:bg-provider-stackoverflow/10">
          <#break>
        <#case "twitter">
          <#assign colorClass="hover:bg-provider-twitter/10">
          <#break>
        <#default>
          <#assign colorClass="hover:bg-secondary-100">
      </#switch>

<div class="${colorClass} flex items-center justify-center w-full rounded mt-2">
<a class="rounded border border-primary py-2 px-4 text-center text-sm transition-all shadow-sm hover:shadow-lg text-primary-600 hover:text-white hover:bg-primary-700 hover:border-primary-800
 w-full flex items-center justify-center" type="button"
 data-provider="${provider.alias}"
        href="${provider.loginUrl}">
      <#--  <button
        class="${colorClass} flex items-center justify-center w-full py-2 rounded-lg text-center"
        data-provider="${provider.alias}"
        href="${provider.loginUrl}"
        type="button"
      >  -->
        <#if providerIcons[provider.alias]??>
          <div class="h-6 w-6 flex">
            <@providerIcons[provider.alias] />
          </div>
        </#if>
        <div class="ml-2">
          ${provider.displayName!}
        </div>
     </a>
</div>
    </#list>
  </div>
</#macro>

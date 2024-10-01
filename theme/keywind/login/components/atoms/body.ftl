<#import "/assets/icons/stories.ftl" as storiesIcon>
<#macro kw>
  <body 
    style="background: linear-gradient(to bottom, #34508E, #4AB2BB);">
     <!-- Stories Logo -->
    <div class="absolute top-0 left-0 p-4">
      <@storiesIcon.kw />
    </div> 
    <div class="mt-[72px] flex items-center justify-center min-h-screen">
      <#nested>
    </div>
  </body>
</#macro>

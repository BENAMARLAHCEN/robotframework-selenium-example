*** Keywords ***
Open Url
    [Arguments]     ${browser}    ${url}
    Create WebDriver        ${browser}
    Maximize Browser Window
    Go To                   ${url}
    Wait For Condition      return !!document.body

Open Url With Chrome
    [Arguments]     ${url}
    Open Url        Chrome    ${url}

Open Url With Firefox
    [Arguments]     ${url}
    Open Url        Firefox    ${url}


Enter Keyword
    [Arguments]     ${keyword}
    Input Text      xpath://textarea[@name="q"]     ${keyword}

Click Search Button
    SeleniumLibrary.Submit Form 	 xpath://form[@role="search"]

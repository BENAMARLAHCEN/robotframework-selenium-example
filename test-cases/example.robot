*** Settings ***
Documentation       Search Google
Library             SeleniumLibrary
Test Teardown       Close Browser
Resource            ../resources/variables.robot
Resource            ../resources/keywords.robot


*** Test Cases ***
Search Google with "Google Search" button via Chrome
    Open Url With Chrome            ${GOOGLE_URL}
    Enter Keyword                   Github
    Click Search Button
    Wait Until Element Is Visible   css:div#rso
    Page Should Contain Element     xpath://cite[contains(text(), "https://github.com")]

search for like manga site Web
    Open Url With Chrome            ${GOOGLE_URL}
    Enter Keyword  like manga
    Click Search Button
    SeleniumLibrary.Wait Until Element Is Visible 	 xpath://cite[contains(text(), "https://lekmanga.net")]
    SeleniumLibrary.Click Element 	 xpath://cite[contains(text(), "https://lekmanga.net")]


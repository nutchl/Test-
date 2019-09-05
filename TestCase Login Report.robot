*** Settings ***
Resource          Variables.robot
Resource          Keywords.robot    ###############################################################

*** Test Cases ***
TC3-Verify flow Question and condition of survey when customer have answer NPS = 5
    [Documentation]    Generate link Survey by product and Interaction Code as (MOT_P1_PRIORITY)
    ...    Product: (G501) home loan/refinance (สินเชื่อบ้าน)
    ...    Interaction code: T519_1 (การให้ข้อมูล)
    #Open and Login
    Open Browser    https://test.tmbfeedback.com/b/w/survey?feed_id=O4dWnaoluvvsVtTFOLvSOQ-K8U9T1CZG#g1    Chrome
    Sleep    10s
    #checkwording page1
    Sleep    5s
    MOT Inquiry    ${CheckLabelIntro}    ${CheckLabelIntro_1}    ${CheckLabelQ1_MeetNeed}    ${CheckLabelChoiceQ1_MeetNeed}    ${CheckLabelQ2_CES}    ${CheckLabelChoiceQ2_CES}
    ...    ${CheckLabelQ3_NPS}    ${CheckLabelChoiceQ3_NPS}
    Click Element    xpath=(.//*[normalize-space(text()) and normalize-space(.)='*'])[2]/preceding::span[24]    #click3
    Click Element    xpath=(.//*[normalize-space(text()) and normalize-space(.)='*'])[3]/preceding::span[15]    #click6
    Click Element    xpath=(.//*[normalize-space(text()) and normalize-space(.)='*'])[2]/following::span[50]    #click5
    Sleep    5s
    Wait Until Element Is Visible    id=submit
    Execute Javascript    document.body.style.zoom="90%"
    Wait Until Element Is Visible    id=submit
    Click button    id = submit

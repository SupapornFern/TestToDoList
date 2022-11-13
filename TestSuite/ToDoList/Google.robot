*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***
${URL}  https://abhigyank.github.io/To-Do-List/
${Browser}  chrome
${DELAY}  0.5
${AddItemInput}  //*[@id="new-task"]
${iconAdd}  //*[@id="add-item"]/button
${AddItemButton}  xpath://a[@href='#add-item']
${ToDoTaskButton}  xpath://a[@href='#todo']
${CompletedButton}  xpath://a[@href='#completed']
${CheckBoxToDoTask}  //*[@id="incomplete-tasks"]/li/label/span[4]
${DeleteToDoTask}  //*[@id="1"]/span
${DeleteCompleted}  xpath://*[@class='mdl-button mdl-js-button mdl-js-ripple-effect delete' and @id='1']
${AdditemName1}  Task Number 1
${AdditemName2}  Task Number 2
${AdditemName3}  Task Number 3
${AdditemName4}  Task Number 4

*** Test Cases ***
Verify basic functionality for Google
  [Documentation]  This test case
  [tags]  Functional
  Open Browser   ${URL}  ${Browser}
  Set Selenium Speed  ${DELAY}
  Title Should Be  To-Do List
  input text  ${AddItemInput}  ${AdditemName2}  ${iconAdd}
  Press Keys  ${iconAdd}  [Return]
  input text  ${AddItemInput}  ${AdditemName3}  ${iconAdd}
  Press Keys  ${iconAdd}  [Return]
  input text  ${AddItemInput}  ${AdditemName4}  ${iconAdd}
  Press Keys  ${iconAdd}  [Return]
  Set Selenium Speed  ${DELAY}
  click element  ${ToDoTaskButton}
  click element  ${CheckBoxToDoTask}
  click element  ${DeleteToDoTask}
  click element  ${CompletedButton}
  Close Browser

*** Keywords ***



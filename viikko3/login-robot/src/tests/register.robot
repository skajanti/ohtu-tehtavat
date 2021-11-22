*** Settings ***
Resource  resource.robot
Test Setup  Create User And Input Login Command

*** Test Cases ***
Register With Valid Username And Password
    Create User  porkkana  borkkana123
    Output Should Not Contain  already exists

Register With Already Taken Username And Valid Password
    Create User  kalle  borkkana123
    Output Should Contain  already exists

Register With Too Short Username And Valid Password
    Create User  a  borkkana123
    Output Should Contain  invalid username

Register With Valid Username And Too Short Password
    Create User  porkkana  a
    Output Should Contain  invalid password

Register With Valid Username And Long Enough Password Containing Only Letters
    Create User  porkkana  borkkana

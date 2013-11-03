Feature: Login to quixplorer
    In order to have sophisticated access control to quixplorer
    I login to quixplorer to see if authentication procedures work

    Scenario: Perparation
        Given I have the reference configuration

    Scenario: Login basic mask
        When I run login function on quixplorer
        Then I expect success and result containing "Login"

    Scenario: Login invalid user
        When I run login function on quixplorer with p_user=nonexistent_user&p_pass=invalid
        Then I expect an error "Login failed: nonexistent_user"


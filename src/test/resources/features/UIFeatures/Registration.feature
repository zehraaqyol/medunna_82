Feature: test all registrant data


  @SmokeTest
    @UIRegistration
  Scenario Outline: test registration
    Given user provides ssn id "<SSN>"
    And  user provides firstname and lastname "<firstname>" and "<lastname>"
    Then user creates username "<username>"
    And user provides also email "<email>"
    And user generates the password "<password>"
    And user registers and validates
    Then user creates the records to a correspondent file
    Examples: test data
      | SSN         | firstname | lastname | username  | email           | password  |
      | 384-37-3827 | Irfan     | Pishkin  | irfanpish | irfan@gmail.com | asdfA123. |


  @UIRegistration
  Scenario Outline: test password strength
    Given user provides the password "<password>"
    Then user valides the password strength "<rgb>"
    Examples: test data
      | password   | rgb              |
      | asdfgkdjs  | rgb(255, 0, 0)   |
      | asdfgkdjs? | rgb(255, 153, 0) |
      | asdhgsag?1 | rgb(153, 255, 0) |




















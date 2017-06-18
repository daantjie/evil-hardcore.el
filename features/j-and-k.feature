Feature: j and k keys do vertigo jumps without a prefix arg, and normal evil motions with a prefix arg.

  Scenario: j key jumps down
    Given the buffer contains an extract from Frankenstein
    And I place the cursor before "accomplishment"
    And I start an action chain
    And I press "j"
    And I type "k"
    Then the cursor should be before "the"

  Scenario: k key jumps up
    Given the buffer contains an extract from Frankenstein
    And I place the cursor before "nearly"
    And I start an action chain
    And I press "k"
    And I type "j"
    Then the cursor should be before "accomplishment"

  Scenario: j key acts normally with prefix arg
    Given the buffer contains an extract from Frankenstein
    And I place the cursor before "nearly"
    And I start an action chain
    And I press "3"
    And I press "j"
    Then the cursor should be before "eathed"

  Scenario: k key acts normally with prefix arg
    Given the buffer contains an extract from Frankenstein
    And I place the cursor before "eathed"
    And I start an action chain
    And I press "3"
    And I press "k"
    Then the cursor should be before "nearly"

  Scenario: j key acts linewise with operators
    Given the buffer contains an extract from Frankenstein
    And I place the cursor before "accomplishment"
    And I start an action chain
    And I press "d"
    And I press "j"
    And I type "j"
    Then the cursor should be before "glimmer"
    And the buffer should contain:
      """
      It was on a dreary night of November that I
      glimmer of the half-extinguished light, I
      saw the dull yellow eye of the creature
      open; it breathed hard, and a convulsive
      motion agitated its limbs.
      """

  Scenario: k key acts linewise with operators
    Given the buffer contains an extract from Frankenstein
    And I place the cursor before "half"
    And I start an action chain
    And I press "d"
    And I press "3"
    And I press "k"
    Then the cursor should be before "yellow"
    And the buffer should contain:
      """
      It was on a dreary night of November that I beheld
      the accomplishment of my toils. With an anxiety
      that almost amounted to agony, collected the
      instruments of life around me, that I might infuse
      a spark of being into the lifeless thing that lay
      yellow eye of the creature open; it breathed hard,
      and a convulsive motion agitated its limbs.
      """

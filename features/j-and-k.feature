Feature: j and k keys do vertigo jumps

  Scenario: j key jumps down
    Given the buffer is empty
    When I insert:
      """
      It was on a dreary night of November that I
      beheld the accomplishment of my toils. With
      an anxiety that almost amounted to agony,
      collected the instruments of life around me,
      that I might infuse a spark of being into
      the lifeless thing that lay at my feet. It
      was already one in the morning; the rain
      pattered dismally against the panes, and my
      candle was nearly burnt out, when, by the
      glimmer of the half-extinguished light, I
      saw the dull yellow eye of the creature
      open; it breathed hard, and a convulsive
      motion agitated its limbs.
      """
    And I place the cursor before "accomplishment"
    And I start an action chain
    And I press "j"
    And I type "k"
    Then the cursor should be before "the"

  Scenario: k key jumps up
    Given the buffer is empty
    When I insert:
      """
      It was on a dreary night of November that I
      beheld the accomplishment of my toils. With
      an anxiety that almost amounted to agony,
      collected the instruments of life around me,
      that I might infuse a spark of being into
      the lifeless thing that lay at my feet. It
      was already one in the morning; the rain
      pattered dismally against the panes, and my
      candle was nearly burnt out, when, by the
      glimmer of the half-extinguished light, I
      saw the dull yellow eye of the creature
      open; it breathed hard, and a convulsive
      motion agitated its limbs.
      """
    And I place the cursor before "nearly"
    And I start an action chain
    And I press "k"
    And I type "j"
    Then the cursor should be before "accomplishment"

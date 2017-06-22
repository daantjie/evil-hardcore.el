Feature: evil-hardcore-mode

  Scenario: evil-hardcore-global-mode is active
    Given the buffer contains an extract from Frankenstein
    Then evil-hardcore-global-mode should be active

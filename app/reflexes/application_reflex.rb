# frozen_string_literal: true

class ApplicationReflex < StimulusReflex::Reflex
  delegate :current_user, to: :connection

  # Put application-wide Reflex behavior and callbacks in this file.
  #
  # Learn more at: https://docs.stimulusreflex.com/reflexes#reflex-classes
end

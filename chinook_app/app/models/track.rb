class Track < ActiveRecord::Base

  # define constants for short and long songs
  SHORT = 180000
  LONG = 360000

  # define scope (saved queries, which can be used as methods and called on repeatedly)
  scope :short, -> { shorter_than_or_equal_to(SHORT) }
  scope :long, -> { where('milliseconds >= ?', LONG) }
  scope :medium, -> { where('milliseconds > ? AND milliseconds < ?', SHORT, LONG) }

  scope :shorter_than_or_equal_to, -> (milliseconds) { where('milliseconds <= ?', milliseconds)}

  scope :starts_with, -> (first_char) { where('name ILIKE ?', "#{first_char}%" ) }

  validates :name, presence: :true

#  validate :name_must_be_titleized # singular, because custom method, defined below

  validates :milliseconds, presence: :true,
                           numericality: {greater_than: 0 }

  validates :unit_price, presence: :true,
                         numericality: {greater_than_or_equal_to: 0.0 }

private

  # def name_must_be_titleized
  #   first_char = name[0]
  #   first_char_is_not_upcased = (first_char != first_char.upcase)
  #
  #   if first_char_is_not_upcased
  #     errors.add{:name "is not a proper title"}
  #   end
  # end
end

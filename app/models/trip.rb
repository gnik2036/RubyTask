class Trip < ApplicationRecord
  TRIP_STATUSES = %w[completed ongoin].freeze
  INVALID_STATUS_CHANGES = [%w[completed ongoin]].freeze
  validate :status_validity, on: :update
  validates :status, presence: true, inclusion: { in: TRIP_STATUSES }

  private

  def status_validity
    return unless status_changed?

    if INVALID_STATUS_CHANGES.include? status_change
      errors.add(:status, "Cannot be changed from #{status_was} to #{status}.")
    end
  end
end
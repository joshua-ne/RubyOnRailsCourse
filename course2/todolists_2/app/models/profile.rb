class Profile < ActiveRecord::Base
  belongs_to :user
  validate :fname_lname_at_least_one
  validates :gender, inclusion: ['male', 'female']
  validate :male_first_name_not_sue


  def fname_lname_at_least_one
    if first_name == nil && last_name == nil
      errors.add(:last_name, "fist name and last name can not be nil at the same time")
    end
  end

  def male_first_name_not_sue
    if gender == "male" && first_name == "Sue"
      errors.add(:first_name, "No male should have first name as Sue")
    end
  end

  def self.get_all_profiles min, max
    Profile.where("birth_year BETWEEN ? and ?", min, max).order(:birth_year)
  end
end

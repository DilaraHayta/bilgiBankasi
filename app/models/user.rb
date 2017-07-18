class User < ApplicationRecord
  has_secure_password


  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true,
                    uniqueness:{ case_sensitive:false},
                    exclusion:{in: 'oturum_ac'},
                    email: true
  validates :password, presence: true,
                      length:{minimum: 6}


  def name
    "#{first_name} #{last_name}"
  end
end

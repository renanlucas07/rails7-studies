class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts

  before_validation :set_tmp_password, on: :create

  def status_to_s
    status ? 'Active' : '<span class="text-color-red">Inactive</span>'.html_safe
  end

  def activate!
    self.update(status: true)  
  end

  private

  def set_tmp_password
    self.password = SecureRandom.hex(6)
  end
end

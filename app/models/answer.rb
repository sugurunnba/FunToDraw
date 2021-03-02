class Answer < ApplicationRecord
  belongs_to :question

  attachment :answer_image
end

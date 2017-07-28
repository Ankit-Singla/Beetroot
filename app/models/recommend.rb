class Recommend < ActiveRecord::Base
  belongs_to :restaurant

  # validate :are_users_connected { to_user_id: something that will be passed here}
	
  private

	def are_users_connected to_user_id
		if FollowMapping.where(follower_id: current_user.id, followee_id: user_id) ||
			FollowMapping.where(follower_id: user_id, followee_id: current_user.id)
			return true
		else
			return false
		end
	end				

end

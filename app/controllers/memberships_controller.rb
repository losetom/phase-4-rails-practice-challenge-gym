class MembershipsController < ApplicationController
    def create
        membership = Membership.create!(member_params)
        render json: membership, status: :created
    end

    private

    def member_params
        parmas.permit(:membership_id, :gym_id, :client_id, :charge)
    end
end

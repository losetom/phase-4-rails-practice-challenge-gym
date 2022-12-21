class ClientsController < ApplicationController
    def show
        client = Client.find_by(id: params[:id])
        if client
            render json: client, status: :found
        else
            render json: { errors: "Client not found" }, status: :not_found
        end
    end
end

module Api
  module V1
    class CarsController < ApplicationController
      def index
        cars = Car.all
        render json: CarSerializer.new(cars, options).serialized_json
      end

      def show
        car = Car.find_by(slug: params[:slug])
        render json: CarSerializer.new(car).serialized_json
      end

      def create
        car = Car.new(car_params)

        if car.save
          render json: CarSerializer.new(car).serialized_json
        else
          render json: { error: car.errors.messages }, status: 422
        end
      end

      def update
        car = Car.find_by(slug: params[:slug])

        if car.update(car_params)
          render json: CarSerializer.new(car, options).serialized_json
        else
          render json: { error: car.errors.messages }, status: 422
        end
      end

      def destroy
        car = Car.find_by(slug: params[:slug])

        if car.destroy
          head :no_content
        else
          render json: { error: car.errors.messages }, status: 422
        end
      end

      private

      def car_params
        params.require(:car).permit(:name, :image_url)
      end

      def options
        @options ||= { include: %i[reviews] }
      end
    end
  end
end

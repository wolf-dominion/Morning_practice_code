class CatsController < ApplicationController

    def index
        @cats = Cat.all
        render json: @cats
    end

    def show
        @cat = Cat.find(params[:id])
        render json: @cat
    end

    def create
        @cat = Cat.create({
        name: params[:name], 
        age: params[:age]})
        render json: @cat
        # @cat = Cat.new(cat_params)

        # if (@cat.save)
        #     redirect_to cat_path
        # else
        #     render :new
        # end
    end

    # def new
    #     @cat = Cat.new
    # end

    def update
        @cat = Cat.find(params[:id])
        @cat.update({
            name: params[:name], 
            age: params[:age]})
            render json: @cat
    end

    def delete
        @cats = Cat.all
        @cat = Cat.find(params[:id])
        @cat.destroy
        render json: @cats
    end

    # private 

    # def cat_params
    #     params.require(:cat).permit(:name, :age)
    # end
end

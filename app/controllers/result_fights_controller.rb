class ResultFightsController < ApplicationController
  before_action :set_result_fight, only: [:show, :edit, :update, :destroy]

  # GET /result_fights
  # GET /result_fights.json
  def index
    @result_fights = ResultFight.all
  end

  # GET /result_fights/1
  # GET /result_fights/1.json
  def show
  end

  # GET /result_fights/new
  def new
    @result_fight = ResultFight.new
  end

  # GET /result_fights/1/edit
  def edit
  end

  # POST /result_fights
  # POST /result_fights.json
  def create
    @result_fight = ResultFight.new(result_fight_params)

    respond_to do |format|
      if @result_fight.save
        format.html { redirect_to @result_fight, notice: 'Result fight was successfully created.' }
        format.json { render :show, status: :created, location: @result_fight }
      else
        format.html { render :new }
        format.json { render json: @result_fight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /result_fights/1
  # PATCH/PUT /result_fights/1.json
  def update
    respond_to do |format|
      if @result_fight.update(result_fight_params)
        format.html { redirect_to @result_fight, notice: 'Result fight was successfully updated.' }
        format.json { render :show, status: :ok, location: @result_fight }
      else
        format.html { render :edit }
        format.json { render json: @result_fight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /result_fights/1
  # DELETE /result_fights/1.json
  def destroy
    @result_fight.destroy
    respond_to do |format|
      format.html { redirect_to result_fights_url, notice: 'Result fight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result_fight
      @result_fight = ResultFight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_fight_params
      params.require(:result_fight).permit(:user_id, :my_fighter, :rival_fighter, :game_result, :global_smash_power)
    end
end

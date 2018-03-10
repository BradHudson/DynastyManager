class CareerStatsController < ApplicationController
  before_action :set_career_stat, only: [:show, :edit, :update, :destroy]

  # GET /career_stats
  # GET /career_stats.json
  def index
    @career_stats = CareerStat.all
  end

  # GET /career_stats/1
  # GET /career_stats/1.json
  def show
  end

  # GET /career_stats/new
  def new
    @career_stat = CareerStat.new
  end

  # GET /career_stats/1/edit
  def edit
  end

  # POST /career_stats
  # POST /career_stats.json
  def create
    @career_stat = CareerStat.new(career_stat_params)

    respond_to do |format|
      if @career_stat.save
        format.html { redirect_to @career_stat, notice: 'Career stat was successfully created.' }
        format.json { render :show, status: :created, location: @career_stat }
      else
        format.html { render :new }
        format.json { render json: @career_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /career_stats/1
  # PATCH/PUT /career_stats/1.json
  def update
    respond_to do |format|
      if @career_stat.update(career_stat_params)
        format.html { redirect_to @career_stat, notice: 'Career stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @career_stat }
      else
        format.html { render :edit }
        format.json { render json: @career_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /career_stats/1
  # DELETE /career_stats/1.json
  def destroy
    @career_stat.destroy
    respond_to do |format|
      format.html { redirect_to career_stats_url, notice: 'Career stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_career_stat
      @career_stat = CareerStat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def career_stat_params
      params.require(:career_stat).permit(:team_id, :reg_wins, :reg_losses, :pts_for, :pts_against, :moves, :playoff_appearances, :playoffs_wins, :playoffs_losses, :integer, :championship_appearances, :championship_wins, :championship_losses)
    end
end

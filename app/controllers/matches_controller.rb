class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]

  # GET /matches
  # GET /matches.json
  def index
    matches_sql = '
    SELECT m.id, m.location, m.home_score, m.away_score, m.date,    home_team.name AS home_team, away_team.name AS away_team
    FROM Matches as m
    INNER JOIN teams AS home_team ON home_team.id=m.home_team_id
    INNER JOIN teams AS away_team ON away_team.id=m.away_team_id'

    @matches = Match.find_by_sql(matches_sql)
    render json: {matches: @matches}
  end

  # GET /matches/1
  # GET /matches/1.json
  def show
    @teams = Team.all
  end

  # GET /matches/new
  def new
    @match = Match.new
    @teams = Team.all
  end

  # GET /matches/1/edit
  def edit
    @teams = Team.all
  end

  # POST /matches
  # POST /matches.json
  def create
    @match = Match.new(match_params)

    respond_to do |format|
      if @match.save
        format.html { redirect_to @match, notice: 'Match was successfully created.' }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matches/1
  # PATCH/PUT /matches/1.json
  def update
    @teams = Team.all

    respond_to do |format|
      if @match.update(match_params)
        flash.now[:notice] = 'Match was successfully updated'
        format.html { render :show, notice: 'Match was successfully updated.' }
        format.json { render :show, status: :ok, location: @match }
      else
        format.html { render :edit }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matches/1
  # DELETE /matches/1.json
  def destroy
    @match.destroy
    respond_to do |format|
      format.html { redirect_to matches_url, notice: 'Match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_params
      params.require(:match).permit(:location, :date, :home_score, :away_score, :home_team_id, :away_team_id)
    end
end

require 'test_helper'

class CareerStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @career_stat = career_stats(:one)
  end

  test "should get index" do
    get career_stats_url
    assert_response :success
  end

  test "should get new" do
    get new_career_stat_url
    assert_response :success
  end

  test "should create career_stat" do
    assert_difference('CareerStat.count') do
      post career_stats_url, params: { career_stat: { championship_appearances: @career_stat.championship_appearances, championship_losses: @career_stat.championship_losses, championship_wins: @career_stat.championship_wins, integer: @career_stat.integer, moves: @career_stat.moves, playoff_appearances: @career_stat.playoff_appearances, playoffs_losses: @career_stat.playoffs_losses, playoffs_wins: @career_stat.playoffs_wins, pts_against: @career_stat.pts_against, pts_for: @career_stat.pts_for, reg_losses: @career_stat.reg_losses, reg_wins: @career_stat.reg_wins, team_id: @career_stat.team_id } }
    end

    assert_redirected_to career_stat_url(CareerStat.last)
  end

  test "should show career_stat" do
    get career_stat_url(@career_stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_career_stat_url(@career_stat)
    assert_response :success
  end

  test "should update career_stat" do
    patch career_stat_url(@career_stat), params: { career_stat: { championship_appearances: @career_stat.championship_appearances, championship_losses: @career_stat.championship_losses, championship_wins: @career_stat.championship_wins, integer: @career_stat.integer, moves: @career_stat.moves, playoff_appearances: @career_stat.playoff_appearances, playoffs_losses: @career_stat.playoffs_losses, playoffs_wins: @career_stat.playoffs_wins, pts_against: @career_stat.pts_against, pts_for: @career_stat.pts_for, reg_losses: @career_stat.reg_losses, reg_wins: @career_stat.reg_wins, team_id: @career_stat.team_id } }
    assert_redirected_to career_stat_url(@career_stat)
  end

  test "should destroy career_stat" do
    assert_difference('CareerStat.count', -1) do
      delete career_stat_url(@career_stat)
    end

    assert_redirected_to career_stats_url
  end
end

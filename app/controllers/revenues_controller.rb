class RevenuesController < ApplicationController
  before_action :authenticate_user!
  before_action :is_host, only: [:index]


  def index
    @reservations = Reservation.current_week_revenue(current_user)

    @this_week_revenue = @reservations.map {|r| {r.updated_at.strftime("%Y-%m-%d") => r.total} }
                                      .inject({}) {|a,b| a.merge(b){|_,x,y| x + y}}

    @this_week_revenue = Date.today().all_week.map{ |date| [date.strftime("%a"), @this_week_revenue[date.strftime("%Y-%m-%d")] || 0 ] }

    if !current_user.merchant_id.blank?
      account = Stripe::Account.retrieve(current_user.merchant_id)
      @login_link = account.login_links.create()
    end

  end


private

def is_host
    redirect_to dashboard_path, alert: "You don't have permission" unless current_user.state == 'host'
end


end

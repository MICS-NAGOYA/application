class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = "イベントを作成しました😆"
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :sub_title)
  end
end

class MeetsController < ApplicationController
  def get_details
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Allow-Headers'] = '*'
    headers['Access-Control-Max-Age'] = '1728000'
    @meet_details = MeetDetail.where(meeting_date: params['date'].to_date)
                             .order(:start).group_by(&:meeting_room)
    render json: @meet_details
  end

  def create_meeting
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Allow-Headers'] = '*'
    headers['Access-Control-Max-Age'] = '1728000'
    new_meet = MeetDetail.create(meeting_topic: params['topic'],
                                 meeting_room: params['room'],
                                 start: params['start'],
                                 end: params['end'],
                                 meeting_date: params['meetingDate'] )
    users = ['Gary', 'Alan', 'Scott']
    users.each { |u| User.create(meet_detail_id: new_meet.id, name: u)}
    result = new_meet || { error: 'create fail '}
    render json: result
  end

  def meet
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Allow-Headers'] = '*'
    headers['Access-Control-Max-Age'] = '1728000'
    meet = MeetDetail.includes(:users).find(params[:id])
    result = { meet: meet, users: meet.users }
    render json: result
  end

  def delete_user
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Allow-Headers'] = '*'
    headers['Access-Control-Max-Age'] = '1728000'
    user = User.find(params['id'])
    result = user.delete
    res = { res: result ? true : false }
    render json: res
  end
end

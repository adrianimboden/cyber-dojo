
module TrafficLightHelper

  def diff_traffic_light(kata, avatar_name, light, max_lights)
    # used from test page and from dashboard page
    number = light['number'].to_i
    ("<div class='diff-traffic-light'" +
         " title='#{tool_tip(avatar_name,light)}'" +
         " data-id='#{kata.id}'" +
         " data-avatar-name='#{avatar_name}'" +
         " data-was-tag='#{number-1}'" +
         " data-now-tag='#{number}'" +
         " data-max-tag='#{max_lights}'>" +
        traffic_light_image(colour(light), 17, 54) +
     "</div>"
    ).html_safe
  end

  def no_diff_avatar_image(kata, avatar_name, light, max_lights)
    number = light['number']
    ("<div class='diff-traffic-light'" +
         " title='review #{avatar_name}#{apostrophe}s current code'" +
         " data-id='#{kata.id}'" +
         " data-avatar-name='#{avatar_name}'" +
         " data-was-tag='#{number}'" +
         " data-now-tag='#{number}'" +
         " data-max-tag='#{max_lights}'>" +
        "<img src='/images/avatars/#{avatar_name}.jpg'" +
            " alt='#{avatar_name}'" +
            " width='45'" +
            " height='45'/>" +
     "</div>"
    ).html_safe
  end

  def traffic_light_image(colour, width, height)
    ("<img src='/images/traffic_light_#{colour}.png'" +
      " alt='#{colour} traffic-light'" +
      " width='#{width}'" +
      " height='#{height}'/>"
    ).html_safe
  end

  def tool_tip(avatar_name, light)
    n = light['number'].to_i
    "review #{avatar_name}#{apostrophe}s #{n-1} #{arrow} #{n} diff"
  end

  def colour(light)
     # very old dojos used 'outcome'
     (light['colour'] || light['outcome']).to_s
  end

  def apostrophe
    '&#39;'
  end

  def arrow
    '&harr;'
  end

end

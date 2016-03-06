# Description:
#   Health checking for Google Cloud

module.exports = (robot) ->
  robot.router.get '/hc', (req, resp) ->
    resp.send 'OK'

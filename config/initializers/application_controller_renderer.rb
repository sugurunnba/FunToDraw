# Be sure to restart your server when you modify this file.

# ActiveSupport::Reloader.to_prepare do
#   ApplicationController.renderer.defaults.merge!(
#     http_host: 'example.org',
#     https: false
#   )
# end

# RuntimeError in Admin::News#showを解消するために記載
Refile.secret_key = '1dbbf57255aad06d2d5a1657e6bd554c431c96465fb1e4b37234f3c5017285c7ca39277c15dc56718471a95ebcd74e51e7c77cb32c77adaa0563ce18cb598567'
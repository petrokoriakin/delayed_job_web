require 'delayed_job_web/application/app'

class DelayedJobRailtie < Rails::Railtie
  initializer "precompile whoops assets" do |app|
    app.config.assets.precompile += ["delayed.js", "delayed.css"]
  end
end
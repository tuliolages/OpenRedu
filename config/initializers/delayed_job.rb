Delayed::Worker.delay_jobs = !(Rails.env.test? || Rails.env.development?)
Delayed::Worker.destroy_failed_jobs = false
Delayed::Worker.max_run_time = 30.minutes
# Delayed::Worker.delay_jobs = true

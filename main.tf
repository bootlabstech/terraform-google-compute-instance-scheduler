resource "google_compute_resource_policy" "hourly" {
  name        = var.name
  project     = var.project_id
  region      = var.region
  description = "Start instances at scheduled time"

  instance_schedule_policy {
    vm_start_schedule {
      schedule = var.start_time
    }
    time_zone = "Asia/Kolkata"
  }
}
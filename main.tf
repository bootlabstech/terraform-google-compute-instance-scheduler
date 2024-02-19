resource "google_compute_resource_policy" "hourly" {
  name   = var.name
  project = var.project_id
  region =var.region
  description = "Start and stop instances"
  instance_schedule_policy {
    vm_start_schedule {
      schedule = var.start_time
    }
    vm_stop_schedule {
      schedule =var.stop_time
    }
    time_zone = "Asia/Kolkata"
  }
}
/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "project_id" {
  description = "GCP Project to deploy resources"
}

variable "domain" {
  description = "Domain for hosting gitlab functionality (ie mydomain.com would access gitlab at gitlab.mydomain.com)"
  default     = ""
}

variable "certmanager_email" {
  description = "Email used to retrieve SSL certificates from Let's Encrypt"
}

variable "gke_version" {
  description = "Version of GKE to use for the GitLab cluster"
  default     = "1.14"
}

variable "gke_node_locations" {
  type        = list(string)
  description = "set the locations where you want to spinup nodes"
  default     = null
}

variable "gke_maschine_typ" {
  description = "Specify the maschine type for the gitlab node pool"
  default     = "n1-standard-2"
}

variable "gitlab_db_password" {
  description = "Password for the GitLab Postgres user"
  default     = ""
}

variable "gitlab_db_name" {
  description = "Specify the name for the database to use"
  default     = "gitlab-db"
}

variable "gitlab_db_instance_type" {
  default = "db-f1-micro"
}

variable "gitlab_redis_tier" {
  description = "describe your variable"
  default     = "BASIC"
}

variable "gitlab_redis_size" {
  description = "set the redis momory store size"
  default     = 1
}

variable "gitlab_helm_release_version" {
  description = "Specify the helm release version to deploy"
  default     = "3.2.2"
}

variable "gitlab_address_name" {
  description = "Name of the address to use for GitLab ingress"
  default     = ""
}

variable "gitlab_runner_install" {
  description = "Choose whether to install the gitlab runner in the cluster"
  default     = true
}

variable "region" {
  default     = "us-central1"
  description = "GCP region to deploy resources to"
}

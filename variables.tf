variable "domain_name" {
  description = "domain name (or application name if no domain name available)"
}

variable "website_index" {
  type        = string
  default     = "index.html"
  description = "S3 > Properties > Static website hosting > index document"
}

variable "website_error" {
  type        = string
  default     = null
  description = "S3 > Properties > Static website hosting > error document"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "tags for all the resources, if any"
}

variable "hosted_zone" {
  default     = null
  description = "Route53 hosted zone"
}

variable "acm_certificate_domain" {
  default     = null
  description = "Domain of the ACM certificate"
}

variable "price_class" {
  default     = "PriceClass_100" // Only US,Canada,Europe
  description = "CloudFront distribution price class"
}

variable "use_default_domain" {
  default     = false
  description = "Use CloudFront website address without Route53 and ACM certificate"
}

variable "upload_sample_file" {
  default     = false
  description = "Upload sample html file to s3 bucket"
}

variable "extra_origin" {
  description = "One or more extra origins for this distribution (multiples allowed)."
  type        = any
  default     = []
}

variable "ordered_cache_behavior" {
  description = "An ordered list of cache behaviors resource for this distribution. List from top to bottom in order of precedence. The topmost cache behavior will have precedence 0."
  type        = any
  default     = []
}

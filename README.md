# Terraform Modules for AWS

This repo contains various terraform modules designed to be ready to work with [terrabuddy](https://github.com/jumidev/terrabuddy).

## As small and generic as possible

- To avoid monolithic code, modules create as few resources as possible and strive to be as generic as possible.
- Modules use remote state data to link with other modules.
- Module variables expose the attributes of their resources as inputs, with defaults that match most cases. 

# Coding conventions

To facilitate their ability to work together, these modules adhere to these coding conventions:

### File naming

- **backend.tf**: contains the `terraform` block with required terraform version, plugin version
- **main.tf**: contains the main module code, including local vars, data and resources
- **outputs.tf**: contains outputs
- **variables.tf** contains variables

### Resource naming

Resources are always named `this`, e.g.
```
resource "aws_vpc" "this" {
...
}
```

### Remote state keys

By design, terraform modules are tied to a specific remote state backend type, this strong coupling means that modules cannot be easily used in different contexts.  All modules in this repo use the `local` backend type, `terrabuddy` does the heavy lifting for reading and writing remote states.

Remote state inputs are prefixed with `rspath_` e.g.

```
# variables.tf
variable "rspath_aws_vpc" {
  description = "Remote state key of vpc to deploy resources in."
}

# main.tf
data "terraform_remote_state" "aws_vpc" {
  backend = "local"
  config = {
    path = "${var.rspath_aws_vpc}/terraform.tfstate"
  }
}

resource "aws_subnet" "this" {
  vpc_id     = data.terraform_remote_state.aws_vpc.this.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = var.name
  }
}

```

### Variable conventions

Modules use shortest possible variable names, without prefixing.  For example, for an `aws_vpc` the variable used for its name should be `var.name` **not** `var.aws_vpc_name`

Where applicable, modules should have a `var.tags` which is a map(any) type

### Outputs

All modules must provide at least two outputs, **id** and **name**.
These should **not be prefixed with the resource type** e.g. `aws_vpc_id`)

```
output "id" {
  description = "Id of the VPC created."
  value       = aws_vpc.this.id
}

output "name" {
  description = "Name of the VPC created."
  value       = aws_vpc.this.name
}
```

### code linting / formatting

This repo has a handy Makefile that uses terraform to do a `fmt` on all tf files

```
make format
```


### Pinned provider versions

To ensure component stability, the provider plugin version should be pinned.  Preferrably to a recent version of aws


provider "random"{}

resource "random_pet" "name"{
  length=2
}

output "pet_name"{
  value=random_pet.name.id
}

resource "local_file" "sample"{
  filename=var.filename
  content="This is a sample file created by me"
}


#Especificamos el proveedor de AWS y la región donde se desplegarán los recursos

provider "aws" {
  region = "us-east-1"
}


#Creamos dos instancias EC2 con el mismo AMI y tipo de instancia, pero con nombres diferentes para diferenciarlas.
#ami-04b938437b69a2c9c -> AMI asociada a Amazon Linux 2023 en us-east-1

resource "aws_instance" "instancia_uno" {
  ami           = "ami-04b938437b69a2c9c"
  instance_type = "t3.micro"
  tags = {
    "Name" = "instancia_uno"
  }
}

resource "aws_instance" "instancia_dos" {
  ami           = "ami-04b938437b69a2c9c"
  instance_type = "t3.micro"
  tags = {
    "Name" = "instancia_dos"
  }
}
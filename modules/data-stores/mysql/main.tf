resource "aws_db_instance" "example" {
  identifier_prefix   = var.db_identifier_prefix # 環境ごとに異なる識別子を設定
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t3.micro" # t2はサポートされていない
  skip_final_snapshot = true
  db_name             = var.db_name # 環境ごとに異なるデータベース名を設定

  username = var.db_username
  password = var.db_password
}

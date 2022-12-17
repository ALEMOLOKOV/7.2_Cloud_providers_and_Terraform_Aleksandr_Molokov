# 7.2_Cloud_providers_and_Terraform_Aleksandr_Molokov

## Задача 1 (Вариант с Yandex.Cloud). Регистрация в ЯО и знакомство с основами (необязательно, но крайне желательно).

1. Подробная инструкция на русском языке содержится [здесь](https://cloud.yandex.ru/docs/solutions/infrastructure-management/terraform-quickstart).
2. Обратите внимание на период бесплатного использования после регистрации аккаунта. 
3. Используйте раздел "Подготовьте облако к работе" для регистрации аккаунта. Далее раздел "Настройте провайдер" для подготовки
базового терраформ конфига.
4. Воспользуйтесь [инструкцией](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs) на сайте терраформа, что бы 
не указывать авторизационный токен в коде, а терраформ провайдер брал его из переменных окружений.

##ОТВЕТ

Зарегистрировал аккаунт на yandex-cloud

![Задание 1](https://user-images.githubusercontent.com/109212419/207437794-1241a98b-c339-415e-9d40-502367d81622.jpg)

![Задание 1 yc](https://user-images.githubusercontent.com/109212419/207437830-dfc07ba8-9037-4e7b-8fcd-5e650ea073e5.jpg)

![yc config list](https://user-images.githubusercontent.com/109212419/208230630-edd58e78-c3aa-478e-9bdc-2bcc86cc210e.jpg)

## Задача 2 Развертывание ВМ при помощи Terraform

Добавление токена через ENV переменную, проверка на валидность и развертывание

![экспорт токена и развертывание](https://user-images.githubusercontent.com/109212419/208231428-cfdaf2a8-e67b-4644-8ae6-a960195a0373.jpg)

Terraform plan

[Terraform plan](https://github.com/ALEMOLOKOV/7.2_Cloud_providers_and_Terraform_Aleksandr_Molokov/blob/7f091d143397202274373dc1da7b84f746bf2e4c/teraform%20plan.txt)

Terraform apply

ВМ в Yandex_cloud

![yandex_cloud_VM](https://user-images.githubusercontent.com/109212419/208232241-50b86e4d-4896-4f39-89db-ddaafe8131c2.jpg)

Terraform файлы

[main.tf](https://github.com/ALEMOLOKOV/7.2_Cloud_providers_and_Terraform_Aleksandr_Molokov/blob/77cf5ec6fcc985d7c9e7b48146a79b8bdb402526/main.tf)

[vars.tf](https://github.com/ALEMOLOKOV/7.2_Cloud_providers_and_Terraform_Aleksandr_Molokov/blob/d4c32d9b2ae0aa87e2317bace77128687514db12/vars.tf)

[versions.tf](https://github.com/ALEMOLOKOV/7.2_Cloud_providers_and_Terraform_Aleksandr_Molokov/blob/bfc297b2d6f412229689a8236bb51552b3074577/versions.tf)


#Создать свой образ ami можно при помощи Packer

















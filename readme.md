# Основной репозиторий проекта "Компьютерное зрение робота AR-600"
Здесь будут находится общая информация, фалйы, скрипты, связанные
с работой и установкой

## Установка необходимого софта
### ROS
Используется `ROS Indigo` на Ubuntu (13.10, 14.04).

[Официальный гайд по установке](http://wiki.ros.org/indigo/Installation/Ubuntu)

### Пакеты
Все пакеты устанавливаются через `sudo apt-get install ros-indigo-<package>`

#### RTAB-Map
`ros-indigo-rtabmap-ros`

**ВНИМАНИЕ!** Есть пакет `ros-indigo-rtabmap` - это неправильный пакет

#### Openni, kinect
Как я понял, rtabmap сам их не ставит. Надо руками. Плюс драйвер.

Ссылки
 - http://answers.ros.org/question/207642/freenect_launch-with-kinect/
 - http://blog.justsophie.com/installing-kinect-nite-drivers-on-ubuntu-14-04-and-ros-indigo/

Пакеты:
	- ros-indigo-openni-camera
	- ros-indigo-openni-launch

После этого можно запустить: `roslaunch openni_launch openni.launch`,но он не найдет камеру.
Для этого нужно поставить драйвер.

Драйверы:
```
git clone https://github.com/avin2/SensorKinect
cd Bin
tar xjf SensorKinect093-Bin-Linux-***.tar.bz2
cd Sensor-Bin-Linux-***
sudo ./install.sh
```
После этого запуск успешен

### Запуск
#### RTAB-Map
[Гайд по запуску rtabmap на ROS](http://wiki.ros.org/rtabmap_ros/Tutorials/HandHeldMapping)

1. Подключить кинект
2. Запустить OpenNI: `roslaunch openni_launch openni.launch depth_registration:=true`
3. Запустить rtabmap: `roslaunch rtabmap_ros rgbd_mapping.launch rtabmap_args:="--delete_db_on_start"`

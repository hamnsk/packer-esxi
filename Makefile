SERVICE_NAME := elastexporter
CURRENT_DIR = $(shell pwd)

GUEST_CPU?=1
GUEST_MEM?=1024
GUEST_DISK?=40000

# Build all templatates
build: build-c7 build-c8

# Build Centos 7
build-c7: build-c7-1-1-40 build-c7-1-2-40 build-c7-1-4-40 build-c7-2-1-40 build-c7-2-2-40 build-c7-2-4-40 build-c7-2-8-40 build-c7-4-4-40 build-c7-4-8-40 build-c7-1-2-100 build-c7-2-4-100 build-c7-2-8-100 build-c7-4-4-100 build-c7-4-8-100 build-c7-1-2-300 build-c7-2-4-300 build-c7-2-8-300 build-c7-4-4-300 build-c7-4-8-300
# 40Gb disk vms
build-c7-1-1-40:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=1 GUEST_MEM=1024 GUEST_DISK=40000 packer build -force config.json
build-c7-1-2-40:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=1 GUEST_MEM=2048 GUEST_DISK=40000 packer build -force config.json
build-c7-1-4-40:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=1 GUEST_MEM=4096 GUEST_DISK=40000 packer build -force config.json
build-c7-2-1-40:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=2 GUEST_MEM=1024 GUEST_DISK=40000 packer build -force config.json
build-c7-2-2-40:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=2 GUEST_MEM=2048 GUEST_DISK=40000 packer build -force config.json
build-c7-2-4-40:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=2 GUEST_MEM=4096 GUEST_DISK=40000 packer build -force config.json
build-c7-2-8-40:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=2 GUEST_MEM=8192 GUEST_DISK=40000 packer build -force config.json
build-c7-4-4-40:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=4 GUEST_MEM=4096 GUEST_DISK=40000 packer build -force config.json
build-c7-4-8-40:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=4 GUEST_MEM=8192 GUEST_DISK=40000 packer build -force config.json
# 100GB disk vms
build-c7-1-2-100:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=1 GUEST_MEM=2048 GUEST_DISK=100000 packer build -force config.json
build-c7-2-4-100:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=2 GUEST_MEM=4096 GUEST_DISK=100000 packer build -force config.json
build-c7-2-8-100:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=2 GUEST_MEM=8192 GUEST_DISK=100000 packer build -force config.json
build-c7-4-4-100:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=4 GUEST_MEM=4096 GUEST_DISK=100000 packer build -force config.json
build-c7-4-8-100:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=4 GUEST_MEM=8192 GUEST_DISK=100000 packer build -force config.json
# 300GB disk vms
build-c7-1-2-300:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=1 GUEST_MEM=2048 GUEST_DISK=300000 packer build -force config.json
build-c7-2-4-300:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=2 GUEST_MEM=4096 GUEST_DISK=300000 packer build -force config.json
build-c7-2-8-300:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=2 GUEST_MEM=8192 GUEST_DISK=300000 packer build -force config.json
build-c7-4-4-300:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=4 GUEST_MEM=4096 GUEST_DISK=300000 packer build -force config.json
build-c7-4-8-300:
	cd ${CURRENT_DIR}/c7 && GUEST_CPU=4 GUEST_MEM=8192 GUEST_DISK=300000 packer build -force config.json


# Build Centos 8 Stream
build-c8: build-c8-1-1-40 build-c8-1-2-40 build-c8-1-4-40 build-c8-2-1-40 build-c8-2-2-40 build-c8-2-4-40 build-c8-2-8-40 build-c8-4-4-40 build-c8-4-8-40 build-c8-1-2-100 build-c8-2-4-100 build-c8-2-8-100 build-c8-4-4-100 build-c8-4-8-100 build-c8-1-2-300 build-c8-2-4-300 build-c8-2-8-300 build-c8-4-4-300 build-c8-4-8-300
# 40Gb disk vms
build-c8-1-1-40:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=1 GUEST_MEM=1024 GUEST_DISK=40000 packer build -force config.json
build-c8-1-2-40:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=1 GUEST_MEM=2048 GUEST_DISK=40000 packer build -force config.json
build-c8-1-4-40:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=1 GUEST_MEM=4096 GUEST_DISK=40000 packer build -force config.json
build-c8-2-1-40:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=2 GUEST_MEM=1024 GUEST_DISK=40000 packer build -force config.json
build-c8-2-2-40:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=2 GUEST_MEM=2048 GUEST_DISK=40000 packer build -force config.json
build-c8-2-4-40:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=2 GUEST_MEM=4096 GUEST_DISK=40000 packer build -force config.json
build-c8-2-8-40:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=2 GUEST_MEM=8192 GUEST_DISK=40000 packer build -force config.json
build-c8-4-4-40:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=4 GUEST_MEM=4096 GUEST_DISK=40000 packer build -force config.json
build-c8-4-8-40:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=4 GUEST_MEM=8192 GUEST_DISK=40000 packer build -force config.json
# 100GB disk vms
build-c8-1-2-100:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=1 GUEST_MEM=2048 GUEST_DISK=100000 packer build -force config.json
build-c8-2-4-100:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=2 GUEST_MEM=4096 GUEST_DISK=100000 packer build -force config.json
build-c8-2-8-100:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=2 GUEST_MEM=8192 GUEST_DISK=100000 packer build -force config.json
build-c8-4-4-100:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=4 GUEST_MEM=4096 GUEST_DISK=100000 packer build -force config.json
build-c8-4-8-100:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=4 GUEST_MEM=8192 GUEST_DISK=100000 packer build -force config.json
# 300GB disk vms
build-c8-1-2-300:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=1 GUEST_MEM=2048 GUEST_DISK=300000 packer build -force config.json
build-c8-2-4-300:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=2 GUEST_MEM=4096 GUEST_DISK=300000 packer build -force config.json
build-c8-2-8-300:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=2 GUEST_MEM=8192 GUEST_DISK=300000 packer build -force config.json
build-c8-4-4-300:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=4 GUEST_MEM=4096 GUEST_DISK=300000 packer build -force config.json
build-c8-4-8-300:
	cd ${CURRENT_DIR}/c8 && GUEST_CPU=4 GUEST_MEM=8192 GUEST_DISK=300000 packer build -force config.json

# RedOS 7.2 40GB
build-redos7.2-2-2-40:
	cd ${CURRENT_DIR}/redos7.2 && GUEST_CPU=2 GUEST_MEM=2048 GUEST_DISK=40000 packer build -force config.json

# Debian 8.11
build-deb8-1-2-40:
	cd ${CURRENT_DIR}/debian8 && GUEST_CPU=1 GUEST_MEM=2048 GUEST_DISK=40000 packer build -force config.json
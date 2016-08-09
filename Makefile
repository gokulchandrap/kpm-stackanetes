DEP = glance-registry configuration glance-api horizon init keystone-api mariadb network neutron-server nova-api nova-compute nova-consoleauth nova-novncproxy nova-scheduler rabbitmq stackanetes zookeeper

all: $(DEP)

$(DEP):
	cd $@ && kpm push -f

.PHONY: $(DEP)

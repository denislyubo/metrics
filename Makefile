CURRENT_DIR := $(shell pwd)

run_prometheus:
	docker run \
		-p 9090:9090 \
		-v $(CURRENT_DIR)/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml \
		prom/prometheus
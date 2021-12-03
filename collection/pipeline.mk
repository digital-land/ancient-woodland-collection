ANCIENT_WOODLAND_DATASET=$(DATASET_DIR)ancient-woodland.csv
ANCIENT_WOODLAND_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)ancient-woodland/87a4898736b177e886dc0722c3403b12989a563c272a6c55a70be1e4a307f94c.csv\
    $(TRANSFORMED_DIR)ancient-woodland/89632d544d34d2745cbfc2ec034fbdae2a74c235ea07acd67d920c4cebddc3c0.csv

$(TRANSFORMED_DIR)ancient-woodland/87a4898736b177e886dc0722c3403b12989a563c272a6c55a70be1e4a307f94c.csv: collection/resource/87a4898736b177e886dc0722c3403b12989a563c272a6c55a70be1e4a307f94c
	$(run-pipeline)

$(TRANSFORMED_DIR)ancient-woodland/89632d544d34d2745cbfc2ec034fbdae2a74c235ea07acd67d920c4cebddc3c0.csv: collection/resource/89632d544d34d2745cbfc2ec034fbdae2a74c235ea07acd67d920c4cebddc3c0
	$(run-pipeline)

$(ANCIENT_WOODLAND_DATASET): $(ANCIENT_WOODLAND_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(ANCIENT_WOODLAND_TRANSFORMED_FILES)

dataset:: $(ANCIENT_WOODLAND_DATASET)


ANCIENT_WOODLAND_STATUS_DATASET=$(DATASET_DIR)ancient-woodland-status.csv
ANCIENT_WOODLAND_STATUS_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)ancient-woodland-status/9954b7c5224461b0e522fab787cfc1f1ac1c68088f152374199c3b25587d6347.csv

$(TRANSFORMED_DIR)ancient-woodland-status/9954b7c5224461b0e522fab787cfc1f1ac1c68088f152374199c3b25587d6347.csv: collection/resource/9954b7c5224461b0e522fab787cfc1f1ac1c68088f152374199c3b25587d6347
	$(run-pipeline)

$(ANCIENT_WOODLAND_STATUS_DATASET): $(ANCIENT_WOODLAND_STATUS_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(ANCIENT_WOODLAND_STATUS_TRANSFORMED_FILES)

dataset:: $(ANCIENT_WOODLAND_STATUS_DATASET)

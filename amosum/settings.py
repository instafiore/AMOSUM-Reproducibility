import os

PROPAGATOR_DIR_LOCATION = os.path.dirname(os.path.abspath(__file__))
STATISTICS_REASON_FILE_MINIMAL = f"{PROPAGATOR_DIR_LOCATION}/statistics_reason/output_statistics_reason_minimal"
STATISTICS_REASON_FILE_MINIMUM = f"{PROPAGATOR_DIR_LOCATION}/statistics_reason/output_statistics_reason_cardinality_minimal"
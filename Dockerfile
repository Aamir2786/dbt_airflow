FROM quay.io/astronomer/astro-runtime:9.1.0-python-3.9-base

# Create a virtual environment
RUN python -m venv dbt_venv

# Install dbt-snowflake in the virtual environment
RUN /bin/bash -c "source dbt_venv/bin/activate && pip install --no-cache-dir dbt-snowflake && deactivate"

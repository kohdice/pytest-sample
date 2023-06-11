import pytest


@pytest.fixture()
def setup_dict() -> dict[str, str]:
    return {"1": "one", "2": "two"}

import access

from . import conftest


class TestDatabaseAccessor:
    def test_get_pokemon(self) -> None:
        with access.get_database_accessor(conftest.CONNECTION_URL) as accessor:
            actual = accessor.get_pokemon(1)

        assert actual == "フシギダネ"

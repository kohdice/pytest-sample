import pytest

from access import util


@pytest.mark.parametrize(
    ["connection_url", "expected"],
    [
        (
            "mysql://user:password@mysql:3306/main_db?charset=utf8",
            "mysql+pymysql://user:password@mysql:3306/main_db?charset=utf8",
        ),
        (
            "://user:password@mysql:3306/main_db?charset=utf8",
            "mysql+pymysql://user:password@mysql:3306/main_db?charset=utf8",
        ),
        (
            "user:password@mysql:3306/main_db?charset=utf8",
            "mysql+pymysql://user:password@mysql:3306/main_db?charset=utf8",
        ),
    ],
)
def test_adjust_connection_url(connection_url, expected):
    actual = util.adjust_connection_url(connection_url)

    assert actual == expected

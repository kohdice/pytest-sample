import sqlalchemy
import sqlalchemy.orm
from sqlalchemy.orm import Session

from . import mapper, util


class DatabaseAccessor:
    def __init__(self, connection_url: str) -> None:
        self._connection_url = connection_url
        self._engine = sqlalchemy.create_engine(self._connection_url)
        self._session: Session = sqlalchemy.orm.create_session(self._engine)

    def _close(self) -> None:
        self._session.close()

    def __enter__(self):
        return self

    def __exit__(self, *_) -> None:
        self._close


def get_database_accessor(connection_url: str) -> DatabaseAccessor:
    return DatabaseAccessor(util.adjust_connection_url(connection_url))

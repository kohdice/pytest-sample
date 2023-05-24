from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import declarative_base

Base = declarative_base()


class NationalPokedex(Base):
    __tablename__ = "national_pokedex"

    pokedex_id = Column("id", Integer, primary_key=True)
    name = Column("name", String)

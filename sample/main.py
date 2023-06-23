class Sample:
    def sample_finc(self, x: int, y: int) -> int:
        return x + y

    def sample_finc_v2(self, x: int, y: int) -> int:
        if not isinstance(x, int):
            raise TypeError
        if not isinstance(y, int):
            raise TypeError

        return x + y

    def sample_list_finc(
        self, sample_dict: dict[str, str]
    ) -> list[tuple[str, str]]:
        return [(k, v) for k, v in sample_dict.items()]

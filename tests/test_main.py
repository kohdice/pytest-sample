from sample import main


class TestSample:
    def test_sample_func(self) -> None:
        sm = main.Sample()
        actual = sm.sample_finc(1, 1)

        assert actual == 2

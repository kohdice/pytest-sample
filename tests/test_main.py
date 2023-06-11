import pytest

from sample import main


class TestSample:
    def test_sample_func(self) -> None:
        sm = main.Sample()
        actual = sm.sample_finc(1, 1)

        assert actual == 2

    def test_sample_func_v2(self) -> None:
        sm = main.Sample()
        actual = sm.sample_finc_v2(1, 1)

        assert actual == 2

    def test_sample_func_v2_error(self) -> None:
        sm = main.Sample()
        with pytest.raises(TypeError):
            sm.sample_finc_v2("1", "1")
        with pytest.raises(TypeError):
            sm.sample_finc_v2(1, "1")

    def test_sample_env_func(self, setup_dict) -> None:
        sm = main.Sample()
        actual = sm.sample_list_finc(setup_dict)

        assert actual == [("1", "one"), ("2", "two")]

from researchai.app import dummy_add


def test_dummy_add():
    # Test the function with known inputs and outputs
    assert dummy_add(1, 2) == 3
    assert dummy_add(-1, 1) == 0
    assert dummy_add(0, 0) == 0

# a dummy python function
def dummy_add(a: int, b: int) -> int:
    """This is a dummy function that I did for sake of estabishing code base

    ```python
        c = dummy_add(a=1, b=2)
        print(c)
    ```
    <pre>
        3
    </pre>

    Args:
        a (int): first number
        b (int): second number

    Returns:
        int: result of the function (Addition)

    Raises:
        ValueError: Input should be an integer (int).
    """
    return a + b


if __name__ == "__main__":

    print(dummy_add(1, 2))

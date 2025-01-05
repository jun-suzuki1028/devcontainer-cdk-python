from lambdas.hello.index import handler


def test_handler() -> None:
    response = handler({}, {})
    assert response["statusCode"] == 200
    assert response["body"] == "Hello, World!"

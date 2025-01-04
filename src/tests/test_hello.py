from src.function.hello import hello


def test_hello():
    event = {}
    context = {}
    response = hello(event, context)
    assert response["statusCode"] == 200
    assert response["body"] == "Hello, World!"

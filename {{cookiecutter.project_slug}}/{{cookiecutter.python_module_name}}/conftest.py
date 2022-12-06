import pytest

from {{ cookiecutter.python_module_name }}.users.models import User
from {{ cookiecutter.python_module_name }}.users.tests.factories import UserFactory


@pytest.fixture(autouse=True)
def media_storage(settings, tmpdir):
    settings.MEDIA_ROOT = tmpdir.strpath


@pytest.fixture
def user(db) -> User:
    return UserFactory()

COMMENT=	platform independent file lock

MODPY_DISTV =	3.25.0
DISTNAME=	filelock-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	sysutils

# https://github.com/tox-dev/filelock
HOMEPAGE=	https://py-filelock.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs
MODPY_PI=	Yes

# disable failing tests with a long timeout
MODPY_PYTEST_ARGS= -v \
		-k 'not test_threaded_shared_lock_obj and not test_threaded_lock_different_lock_obj'

TEST_DEPENDS=	devel/py-test-asyncio \
		devel/py-test-cov \
		devel/py-test-mock \
		devel/py-test-timeout \
		devel/py-virtualenv

.include <bsd.port.mk>

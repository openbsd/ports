COMMENT =		SSHv2 library built on asyncio

MODPY_DISTV =		2.21.1
DISTNAME =		asyncssh-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		http://asyncssh.timeheart.net

# EPL 2.0 or GPL 2.0+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-typing-extensions \
			security/py-cryptography

TEST_DEPENDS =		security/py-bcrypt \
			security/py-fido2 \
			security/py-gssapi \
			security/py-libnacl \
			security/py-openssl
# creates fairly large files for some tests; in particular,
# test_sparse_copy wants ~4GB so disable that one
TEST_ENV =		TMPDIR=${WRKDIR}
MODPY_PYTEST_ARGS =	-k 'not test_sparse_copy'

.include <bsd.port.mk>

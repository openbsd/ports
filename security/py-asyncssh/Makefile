COMMENT =		SSHv2 library built on asyncio

MODPY_DISTV =		2.20.0
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

.include <bsd.port.mk>

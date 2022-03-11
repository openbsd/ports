COMMENT =	asynchronous parallel SSH client library

MODPY_EGG_VERSION =	1.1.1
DISTNAME =	parallel-ssh-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	3

CATEGORIES =	sysutils

FLAVORS =	python3
FLAVOR =	python3

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		security/py-paramiko${MODPY_FLAVOR} \
			devel/py-gevent${MODPY_FLAVOR} \
			devel/py-greenlet${MODPY_FLAVOR}

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>

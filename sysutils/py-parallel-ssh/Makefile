COMMENT=	asynchronous parallel SSH client library

MODPY_DISTV=	2.14.0
DISTNAME=	parallel_ssh-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}

CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE=	Yes

MODPY_PI=	Yes
MODULES=	lang/python
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	security/py-paramiko \
		devel/py-gevent \
		devel/py-greenlet

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>

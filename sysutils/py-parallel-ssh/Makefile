COMMENT=	asynchronous parallel SSH client library

MODPY_DISTV=	2.16.0.post1
DISTNAME=	parallel_ssh-${MODPY_DISTV}
PKGNAME=	py-parallel-ssh-${MODPY_DISTV:S/.post/pl/}
REVISION=	0

CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE=	Yes

MODPY_PI=	Yes
MODULES=	lang/python
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	security/py-ssh2-python \
		devel/py-gevent \
		devel/py-greenlet

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>

COMMENT=	asynchronous parallel SSH client library

MODPY_DISTV=	2.12.0
DISTNAME=	parallel-ssh-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

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

# override old versioneer.py that doesn't support py312
BUILD_DEPENDS+=	devel/py-versioneer
post-extract:
	rm  ${WRKSRC}/versioneer.py

.include <bsd.port.mk>

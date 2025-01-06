COMMENT=	library for getting/setting process names

MODPY_DISTV=	1.3.4
DISTNAME=	setproctitle-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/dvarrazzo/py-setproctitle

# BSD 3-clause
PERMIT_PACKAGE=Yes

WANTLIB +=	pthread

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

.include <bsd.port.mk>

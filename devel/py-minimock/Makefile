# $OpenBSD: Makefile,v 1.14 2020/07/03 21:12:46 sthen Exp $

COMMENT=		the simplest possible mock library, for Python

MODPY_EGG_VERSION =	1.2.8
DISTNAME=		MiniMock-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
REVISION=		4

CATEGORIES=		devel

# MIT
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

FLAVORS =	python3
FLAVOR ?=

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}minimock/
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/${MODPY_PY_PREFIX}minimock/

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.8 2015/09/29 10:51:54 sthen Exp $

COMMENT=		the simplest possible mock library, for Python

MODPY_EGG_VERSION =	1.2.8
DISTNAME=		MiniMock-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		http://pypi.python.org/pypi/MiniMock

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-minimock/
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/py-minimock/

.include <bsd.port.mk>

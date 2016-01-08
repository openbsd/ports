# $OpenBSD: Makefile,v 1.10 2016/01/08 13:17:15 jasper Exp $

COMMENT=		the simplest possible mock library, for Python

MODPY_EGG_VERSION =	1.2.8
DISTNAME=		MiniMock-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
REVISION=		1

CATEGORIES=		devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-minimock/
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/py-minimock/

.include <bsd.port.mk>

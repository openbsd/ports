# $OpenBSD: Makefile,v 1.6 2013/05/12 07:24:21 benoit Exp $

COMMENT=		the simplest possible mock library, for Python

MODPY_EGG_VERSION =	1.2.8
DISTNAME=		MiniMock-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}

CATEGORIES=		devel

HOMEPAGE=		http://pypi.python.org/pypi/MiniMock

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=M/MiniMock/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-minimock/
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/py-minimock/

.include <bsd.port.mk>

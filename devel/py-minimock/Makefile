# $OpenBSD: Makefile,v 1.2 2011/06/08 17:39:25 jasper Exp $

COMMENT=		the simplest possible mock library, for Python

MODPY_EGG_VERSION=	1.2.5
DISTNAME=		MiniMock-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
REVISION =		0

CATEGORIES=		devel

HOMEPAGE=		http://pypi.python.org/pypi/python-daemon/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=M/MiniMock/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-minimock/
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/py-minimock/

.include <bsd.port.mk>

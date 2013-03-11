# $OpenBSD: Makefile,v 1.5 2013/03/11 11:41:32 espie Exp $

COMMENT=		library to implement a Unix daemon process

MODPY_EGG_VERSION=	1.6
DISTNAME=		python-daemon-${MODPY_EGG_VERSION}
PKGNAME=		py-daemon-${MODPY_EGG_VERSION}
REVISION=		1

CATEGORIES=		sysutils

HOMEPAGE=		http://pypi.python.org/pypi/python-daemon/

# PSF-2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=p/python-daemon/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=	devel/py-minimock \
			sysutils/py-lockfile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-daemon/
	${INSTALL_DATA} ${WRKSRC}/doc/FAQ ${PREFIX}/share/doc/py-daemon/

.include <bsd.port.mk>

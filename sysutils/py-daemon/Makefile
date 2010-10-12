# $OpenBSD: Makefile,v 1.1.1.1 2010/10/12 16:49:09 jasper Exp $

COMMENT=		library to implement a Unix daemon process

MODPY_EGG_VERSION=	1.6
DISTNAME=		python-daemon-${MODPY_EGG_VERSION}
PKGNAME=		py-daemon-${MODPY_EGG_VERSION}

CATEGORIES=		sysutils

HOMEPAGE=		http://pypi.python.org/pypi/python-daemon/

# PSF-2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=p/python-daemon/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

REGRESS_DEPENDS=	::devel/py-minimock \
			::sysutils/py-lockfile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-daemon/
	${INSTALL_DATA} ${WRKSRC}/doc/FAQ ${PREFIX}/share/doc/py-daemon/

.include <bsd.port.mk>

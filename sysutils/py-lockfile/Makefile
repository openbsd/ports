# $OpenBSD: Makefile,v 1.3 2011/06/08 17:50:25 jasper Exp $

COMMENT=		platform-independent file locking for Python

MODPY_EGG_VERSION=	0.9.1
DISTNAME=		lockfile-${MODPY_EGG_VERSION}
REVISION=		0
PKGNAME=		py-${DISTNAME}

CATEGORIES=		sysutils

HOMEPAGE=		http://code.google.com/p/pylockfile/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://pylockfile.googlecode.com/files/

MODULES=		lang/python
REGRESS_DEPENDS=	${FULLPKGPATH}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-lockfile/; \
	cd ${WRKSRC}; ${INSTALL_DATA} doc/lockfile.rst README LICENSE \
	    ${PREFIX}/share/doc/py-lockfile/

do-regress:
	cd ${WRKSRC}/test; ${MODPY_BIN} test_lockfile.py

.include <bsd.port.mk>

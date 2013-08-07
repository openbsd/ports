# $OpenBSD: Makefile,v 1.6 2013/08/07 21:32:39 naddy Exp $

COMMENT=		platform-independent file locking for Python

MODPY_EGG_VERSION=	0.9.1
DISTNAME=		lockfile-${MODPY_EGG_VERSION}
REVISION=		2
PKGNAME=		py-${DISTNAME}

CATEGORIES=		sysutils

HOMEPAGE=		https://code.google.com/p/pylockfile/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://pylockfile.googlecode.com/files/

MODULES=		lang/python
TEST_DEPENDS=	${FULLPKGPATH}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-lockfile/; \
	cd ${WRKSRC}; ${INSTALL_DATA} doc/lockfile.rst README LICENSE \
	    ${PREFIX}/share/doc/py-lockfile/

do-test:
	cd ${WRKSRC}/test; ${MODPY_BIN} test_lockfile.py

.include <bsd.port.mk>

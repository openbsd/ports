# $OpenBSD: Makefile,v 1.5 2013/03/11 11:41:32 espie Exp $

COMMENT=		platform-independent file locking for Python

MODPY_EGG_VERSION=	0.9.1
DISTNAME=		lockfile-${MODPY_EGG_VERSION}
REVISION=		1
PKGNAME=		py-${DISTNAME}

CATEGORIES=		sysutils

HOMEPAGE=		http://code.google.com/p/pylockfile/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://pylockfile.googlecode.com/files/

MODULES=		lang/python
TEST_DEPENDS=	${FULLPKGPATH}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-lockfile/; \
	cd ${WRKSRC}; ${INSTALL_DATA} doc/lockfile.rst README LICENSE \
	    ${PREFIX}/share/doc/py-lockfile/

do-test:
	cd ${WRKSRC}/test; ${MODPY_BIN} test_lockfile.py

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.27 2014/11/24 10:01:47 edd Exp $

COMMENT=	powerful IMAP/Maildir synchronization and reader support

MODPY_EGG_VERSION = 6.5.6
GH_ACCOUNT =	OfflineIMAP
GH_PROJECT =	offlineimap
GH_TAGNAME =	v${MODPY_EGG_VERSION}
GH_COMMIT =	7770b5ff73737d1269eb1ba7554b8d3486c7f5ec
DISTNAME=	offlineimap-${MODPY_EGG_VERSION}
CATEGORIES=	mail

HOMEPAGE=	http://offlineimap.org/

MAINTAINER=	Edd Barrett <edd@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

NO_TEST=	Yes

MODULES=	lang/python

BUILD_DEPENDS=	textproc/py-docutils

EXAMPLESDIR=	${PREFIX}/share/examples/offlineimap

post-build:
	@cd ${WRKSRC}/docs && ${LOCALBASE}/bin/rst2man MANUAL.rst ${WRKBUILD}/offlineimap.1

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/offlineimap.conf{,.minimal} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/offlineimap.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

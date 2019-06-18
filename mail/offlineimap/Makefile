# $OpenBSD: Makefile,v 1.54 2019/06/18 20:32:37 remi Exp $

COMMENT=	powerful IMAP/Maildir synchronization and reader support

MODPY_EGG_VERSION = 7.2.4
DISTNAME =	offlineimap-v${MODPY_EGG_VERSION}
PKGNAME =	offlineimap-${MODPY_EGG_VERSION}

CATEGORIES=	mail

HOMEPAGE=	http://www.offlineimap.org/

MAINTAINER=	Remi Locherer <remi@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

NO_TEST=	Yes

MODULES=	lang/python

BUILD_DEPENDS=	textproc/asciidoc \
		devel/py-six

RUN_DEPENDS=	devel/py-six

MASTER_SITES=	http://www.offlineimap.org/uploads/

EXAMPLESDIR=	${PREFIX}/share/examples/offlineimap

post-build:
	${LOCALBASE}/bin/a2x -f manpage ${WRKSRC}/docs/offlineimap.txt
	${LOCALBASE}/bin/a2x -f manpage ${WRKSRC}/docs/offlineimapui.txt

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/offlineimap.conf{,.minimal} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/offlineimap.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/docs/offlineimapui.7 ${PREFIX}/man/man7

.include <bsd.port.mk>

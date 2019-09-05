# $OpenBSD: Makefile,v 1.56 2019/09/05 20:22:41 remi Exp $

COMMENT=	powerful IMAP/Maildir synchronization and reader support

MODPY_EGG_VERSION = 7.3.0
DISTNAME =	offlineimap-v${MODPY_EGG_VERSION}
PKGNAME =	offlineimap-${MODPY_EGG_VERSION}

CATEGORIES=	mail

HOMEPAGE=	http://www.offlineimap.org/

MAINTAINER=	Remi Locherer <remi@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

NO_TEST=	Yes

MODULES=	lang/python

BUILD_DEPENDS=	textproc/asciidoc \
		devel/py-rfc6555 \
		devel/py-six

RUN_DEPENDS=	devel/py-rfc6555 \
		devel/py-six

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

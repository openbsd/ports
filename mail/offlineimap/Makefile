# $OpenBSD: Makefile,v 1.61 2021/10/29 12:06:50 tb Exp $

COMMENT=	powerful IMAP/Maildir synchronization and reader support

MODPY_EGG_VERSION = 8.0.0
#DISTNAME =	offlineimap-v${MODPY_EGG_VERSION}
PKGNAME =	offlineimap-${MODPY_EGG_VERSION}
REVISION =	0

GH_ACCOUNT =	OfflineIMAP
GH_PROJECT =	offlineimap3
GH_TAGNAME =	v${MODPY_EGG_VERSION}

CATEGORIES=	mail

HOMEPAGE=	https://www.offlineimap.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

NO_TEST=	Yes

MODULES=	lang/python

BUILD_DEPENDS=	textproc/asciidoc \
		devel/py-rfc6555${MODPY_FLAVOR} \
		mail/py-imaplib2${MODPY_FLAVOR} \
		sysutils/py-distro${MODPY_FLAVOR}

RUN_DEPENDS=	devel/py-rfc6555${MODPY_FLAVOR} \
		mail/py-imaplib2${MODPY_FLAVOR} \
		sysutils/py-distro${MODPY_FLAVOR}

#MASTER_SITES=	https://www.offlineimap.org/uploads/

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

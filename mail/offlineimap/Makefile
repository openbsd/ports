COMMENT=	powerful IMAP/Maildir synchronization and reader support

MODPY_DISTV =	8.0.3
GH_ACCOUNT=	OfflineIMAP
GH_PROJECT=	offlineimap3
GH_TAGNAME=	v${MODPY_DISTV}
PKGNAME=	offlineimap-${MODPY_DISTV}

CATEGORIES=	mail

HOMEPAGE=	https://www.offlineimap.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	textproc/asciidoc \
		mail/py-imaplib2 \
		sysutils/py-distro

RUN_DEPENDS=	devel/py-rfc6555 \
		mail/py-imaplib2 \
		sysutils/py-distro \
		security/py-keyring

# tests need setup: copy credentials.conf.sample to test/credentials.conf
# and set your credentials there.
TEST_DEPENDS=	www/py-urllib3

post-build:
	${LOCALBASE}/bin/a2x -f manpage ${WRKSRC}/docs/offlineimap.txt
	${LOCALBASE}/bin/a2x -f manpage ${WRKSRC}/docs/offlineimapui.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/offlineimap
	${INSTALL_DATA} ${WRKSRC}/offlineimap.conf{,.minimal} \
		${PREFIX}/share/examples/offlineimap
	${INSTALL_DATA} ${WRKSRC}/docs/offlineimap.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/docs/offlineimapui.7 ${PREFIX}/man/man7

.include <bsd.port.mk>

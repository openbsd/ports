COMMENT =	system monitoring and alert notifier
DISTNAME =	reed-alert-v1.06
PKGNAME =	${DISTNAME:S/-v/-/}
CATEGORIES =	sysutils

HOMEPAGE =	https://dataswamp.org/~solene/2018-01-17-reed-alert.html

# MIT
PERMIT_PACKAGE =	Yes

SITES =		ftp://bitreich.org/releases/reed-alert/

RUN_DEPENDS =	net/curl \
		lang/ecl

# required for tests
PORTHOME =	${WRKDIR}

TEST_DEPENDS =	lang/ecl

PKG_ARCH =	*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/reed-alert
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/reed-alert/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/reed-alert/
	${INSTALL_DATA} ${WRKSRC}/example-full.lisp \
		${PREFIX}/share/examples/reed-alert/
	${INSTALL_DATA} ${WRKSRC}/example-simple.lisp \
		${PREFIX}/share/examples/reed-alert/
	${INSTALL_DATA} ${WRKSRC}/extras/output2html.sh \
		${PREFIX}/share/reed-alert

.include <bsd.port.mk>

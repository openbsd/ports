# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:50 sthen Exp $

COMMENT =	system monitoring and alert notifier
DISTNAME =	reed-alert-v1.04
PKGNAME =	${DISTNAME:S/-v/-/}
EXTRACT_SUFX =	.tgz
CATEGORIES =	sysutils

HOMEPAGE =	https://dataswamp.org/~solene/2018-01-17-reed-alert.html
MAINTAINER =	Solene Rapenne <solene@perso.pw>

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =	ftp://bitreich.org/releases/reed-alert/

RUN_DEPENDS =	net/curl \
		lang/ecl

NO_TEST =	Yes

PKG_ARCH =	*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/reed-alert
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/reed-alert/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/reed-alert/
	${INSTALL_DATA} ${WRKSRC}/example-full.lisp \
		${PREFIX}/share/examples/reed-alert/
	${INSTALL_DATA} ${WRKSRC}/example-simple.lisp \
		${PREFIX}/share/examples/reed-alert/

.include <bsd.port.mk>

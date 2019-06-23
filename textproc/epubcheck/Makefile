# $OpenBSD: Makefile,v 1.1.1.1 2019/06/23 06:50:51 bentley Exp $

PKG_ARCH =	*

COMMENT =	EPUB validator

V =		4.2.1
DISTNAME =	epubcheck-$V

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/w3c/epubcheck

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/w3c/epubcheck/releases/download/v$V/

EXTRACT_SUFX =		.zip

MODULES =		java
MODJAVA_VER =		1.8+
RUN_DEPENDS =		java/javaPathHelper

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/epubcheck
	${INSTALL_DATA} ${WRKSRC}/epubcheck.jar ${PREFIX}/share/epubcheck
	${INSTALL_SCRIPT} ${FILESDIR}/epubcheck ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/epubcheck/lib
	${INSTALL_DATA} ${WRKSRC}/lib/*.jar ${PREFIX}/share/epubcheck/lib

.include <bsd.port.mk>

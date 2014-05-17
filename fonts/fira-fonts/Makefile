# $OpenBSD: Makefile,v 1.1.1.1 2014/05/17 17:19:58 juanfra Exp $

COMMENT =		Firefox OS typeface

DISTNAME =		fira-fonts-20130928

CATEGORIES =		fonts x11

HOMEPAGE =		http://www.mozilla.org/en-US/styleguide/products/firefox-os/typeface/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# SIL OPEN FONT LICENSE Version 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://download.tuxfamily.org/jod/fonts/fira-fonts/ \
			ftp://download.tuxfamily.org/jod/fonts/fira-fonts/

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

FONTS_DIR =		${PREFIX}/lib/X11/fonts/fira
DOCS_DIR =		${PREFIX}/share/doc/fira-fonts
WEBFONTS_DIR =		${PREFIX}/share/fira-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTS_DIR} ${DOCS_DIR} \
		${WEBFONTS_DIR}/eot ${WEBFONTS_DIR}/woff
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${DOCS_DIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCS_DIR}
	${INSTALL_DATA} ${WRKSRC}/fira.css ${DOCS_DIR}
	${INSTALL_DATA} ${WRKSRC}/index.html ${DOCS_DIR}
	${INSTALL_DATA} ${WRKSRC}/otf/* ${FONTS_DIR}
	${INSTALL_DATA} ${WRKSRC}/ttf/* ${FONTS_DIR}
	${INSTALL_DATA} ${WRKSRC}/eot/* ${WEBFONTS_DIR}/eot
	${INSTALL_DATA} ${WRKSRC}/woff/* ${WEBFONTS_DIR}/woff

.include <bsd.port.mk>

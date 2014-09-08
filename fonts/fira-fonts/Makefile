# $OpenBSD: Makefile,v 1.4 2014/09/08 10:40:12 juanfra Exp $

COMMENT =		Firefox OS typeface

# Version 3.111
# - Removed the technical reports. The license of the reports doesn't permit
#   the distribution.
# - Removed the medium style from the otf directory. Fontconfig often uses
#   the medium style by default instead of the regular style.
# - Removed the source directory.
DISTNAME =		fira-fonts-20140907

CATEGORIES =		fonts x11

# Alternative homepage http://www.carrois.com/fira-3-1/
HOMEPAGE =		https://mozilla.github.io/Fira/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# SIL OPEN FONT LICENSE Version 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://download.tuxfamily.org/jod/fonts/fira-fonts/ \
			ftp://download.tuxfamily.org/jod/fonts/fira-fonts/
EXTRACT_SUFX =		.tar.lz

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

DOC_DIR =		${PREFIX}/share/doc/fira-fonts
FONTS_DIR =		${PREFIX}/lib/X11/fonts/fira
WEBFONTS_DIR =		${PREFIX}/share/fira-fonts

do-install:
	${INSTALL_DATA_DIR} ${DOC_DIR} ${FONTS_DIR} ${WEBFONTS_DIR}/webfonts
	@echo 'This directory contains the web version of the Fira typeface' >\
		${WEBFONTS_DIR}/README
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/otf/* ${FONTS_DIR}
	${INSTALL_DATA} ${WRKSRC}/eot/* ${WEBFONTS_DIR}/webfonts
	${INSTALL_DATA} ${WRKSRC}/woff/* ${WEBFONTS_DIR}/webfonts
	${INSTALL_DATA} ${WRKSRC}/ttf/* ${WEBFONTS_DIR}/webfonts

.include <bsd.port.mk>

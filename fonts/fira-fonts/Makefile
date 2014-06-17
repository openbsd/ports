# $OpenBSD: Makefile,v 1.3 2014/06/17 17:47:23 juanfra Exp $

COMMENT =		Firefox OS typeface

# Version 3.1.8
DISTNAME =		fira-fonts-20140605

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

FONTS_DIR =		${PREFIX}/lib/X11/fonts/fira
WEBFONTS_DIR =		${PREFIX}/share/fira-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTS_DIR} ${WEBFONTS_DIR}/webfonts
	@echo 'This directory contains the web version of the Fira typeface' >\
		${WEBFONTS_DIR}/README
	${INSTALL_DATA} ${WRKSRC}/OTF/* ${FONTS_DIR}
	${INSTALL_DATA} ${WRKSRC}/WEB/* ${WEBFONTS_DIR}/webfonts

.include <bsd.port.mk>

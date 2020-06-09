# $OpenBSD: Makefile,v 1.1.1.1 2020/06/09 03:41:57 bentley Exp $

COMMENT=		monospace font designed for coders

V =			3.000
DISTNAME =		inconsolata-font-$V
PKGNAME =		inconsolata-new-$V
CATEGORIES=		fonts x11

HOMEPAGE =		https://www.levien.com/type/myfonts/inconsolata.html

DIST_SUBDIR =		inconsolata-$V
MASTER_SITES =		https://github.com/googlefonts/Inconsolata/releases/download/v$V/
DISTFILES =		fonts_ttf.zip \
			fonts_otf.zip

# SIL OFL 1.1
PERMIT_PACKAGE=	Yes

NO_BUILD=		Yes
NO_TEST=		Yes

PKG_ARCH =		*

WRKDIST =		${WRKDIR}/fonts

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/inconsolata
	${INSTALL_DATA} ${WRKSRC}/ttf/*.ttf ${PREFIX}/share/fonts/inconsolata
	${INSTALL_DATA} ${WRKSRC}/otf/*.otf ${PREFIX}/share/fonts/inconsolata

.include <bsd.port.mk>

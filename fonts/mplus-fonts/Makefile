# $OpenBSD: Makefile,v 1.6 2020/06/09 04:01:53 bentley Exp $

COMMENT =		collection of Japanese sans-serif fonts

V =			063a
DISTNAME =		mplus-TESTFLIGHT-$V
PKGNAME =		mplus-fonts-$V

CATEGORIES =		fonts x11 japanese

HOMEPAGE =		https://mplus-fonts.osdn.jp/

# "Unlimited permission is granted to use, copy, and distribute them,
#  with or without modification, either commercially or noncommercially."
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_OSDN_JP:=mplus-fonts/62344/}
EXTRACT_SUFX =		.tar.xz

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

FONTDIR =		${PREFIX}/share/fonts/mplus-fonts
DOCDIR =		${PREFIX}/share/doc/mplus-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/[RL]* ${DOCDIR}

.include <bsd.port.mk>

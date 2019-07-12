# $OpenBSD: Makefile,v 1.2 2019/07/12 20:46:11 sthen Exp $

COMMENT =	Japanese Ming-style font

DISTNAME =	hanazono-20170904

CATEGORIES =	fonts japanese

HOMEPAGE =	http://fonts.jp/hanazono/

# "Unlimited permission is granted to use, copy, and distribute it,
#  with or without modification, either commercially and noncommercially."
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_OSDN_JP:=hanazono-font/68253/}
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

WRKDIST =		${WRKDIR}


do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/hanazono
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${PREFIX}/share/fonts/hanazono

.include <bsd.port.mk>

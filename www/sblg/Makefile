# $OpenBSD: Makefile,v 1.27 2019/11/03 19:56:42 sthen Exp $

COMMENT =	simple off-line blog utility

DISTNAME =	sblg-0.5.8
CATEGORIES =	www

HOMEPAGE =	https://kristaps.bsd.lv/sblg/

MAINTAINER =	Bryan Vyhmeister <bryan@bsdjournal.net>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c expat

MASTER_SITES =		https://kristaps.bsd.lv/sblg/snapshots/

MAKE_FLAGS =		CC="${CC}"

CONFIGURE_STYLE =	simple

NO_TEST =		Yes

ALL_TARGET =		sblg

.include <bsd.port.mk>

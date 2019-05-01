# $OpenBSD: Makefile,v 1.19 2019/05/01 17:43:03 sthen Exp $

COMMENT =	simple off-line blog utility

DISTNAME =	sblg-0.4.23
CATEGORIES =	www

HOMEPAGE =	https://kristaps.bsd.lv/sblg/

MAINTAINER =	Bryan Vyhmeister <bryan@bsdjournal.net>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += c expat

MASTER_SITES =		https://kristaps.bsd.lv/sblg/snapshots/

MAKE_FLAGS =		CC="${CC}"

CONFIGURE_STYLE =	simple

NO_TEST =		Yes

ALL_TARGET =		sblg

.include <bsd.port.mk>

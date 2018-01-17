# $OpenBSD: Makefile,v 1.13 2018/01/17 08:32:04 bentley Exp $

COMMENT =	simple off-line blog utility

DISTNAME =	sblg-0.4.12
REVISION =	0
CATEGORIES =	www

HOMEPAGE =	https://kristaps.bsd.lv/sblg/

MAINTAINER =	Bryan Vyhmeister <bryan@bsdjournal.net>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c expat

MASTER_SITES =		https://kristaps.bsd.lv/sblg/snapshots/

MAKE_FLAGS =		CC="${CC}"

CONFIGURE_STYLE =	simple

NO_TEST =		Yes

ALL_TARGET =		sblg

.include <bsd.port.mk>

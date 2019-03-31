# $OpenBSD: Makefile,v 1.18 2019/03/31 15:35:38 bcallah Exp $

COMMENT =	simple off-line blog utility

DISTNAME =	sblg-0.4.20
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

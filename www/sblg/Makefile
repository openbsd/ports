# $OpenBSD: Makefile,v 1.2 2016/06/23 03:59:34 bentley Exp $

COMMENT =	simple off-line blog utility

DISTNAME =	sblg-0.3.4

CATEGORIES =	www

HOMEPAGE =	https://kristaps.bsd.lv/sblg/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c expat

MASTER_SITES =		https://kristaps.bsd.lv/sblg/snapshots/

MAKE_FLAGS =		CC="${CC}"

NO_TEST =		Yes

ALL_TARGET =		sblg

.include <bsd.port.mk>

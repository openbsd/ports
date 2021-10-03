# $OpenBSD: Makefile,v 1.59 2021/10/03 19:04:15 jturner Exp $

COMMENT =		minimal CGI library for web applications

DISTNAME =		kcgi-0.13.0
CATEGORIES =		www

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://kristaps.bsd.lv/kcgi/
MASTER_SITES =		https://kristaps.bsd.lv/kcgi/snapshots/
EXTRACT_SUFX =		.tgz

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c

CONFIGURE_STYLE =	simple
MAKE_FLAGS =		PREFIX="${PREFIX}"

TEST_DEPENDS =		net/curl
TEST_TARGET =		regress

.include <bsd.port.mk>

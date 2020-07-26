# $OpenBSD: Makefile,v 1.55 2020/07/26 23:17:49 jturner Exp $

COMMENT =		minimal CGI library for web applications

DISTNAME =		kcgi-0.12.2
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

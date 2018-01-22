# $OpenBSD: Makefile,v 1.34 2018/01/22 21:58:29 jturner Exp $

COMMENT =		minimal CGI library for web applications

DISTNAME =		kcgi-0.10.0
CATEGORIES =		www

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://kristaps.bsd.lv/kcgi/
MASTER_SITES =		https://kristaps.bsd.lv/kcgi/snapshots/
EXTRACT_SUFX =		.tgz

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

CONFIGURE_STYLE =	simple
USE_GMAKE =		Yes
MAKE_FILE =		GNUmakefile
MAKE_FLAGS =		PREFIX="${PREFIX}"

TEST_DEPENDS =		net/curl
TEST_TARGET =		regress

.include <bsd.port.mk>

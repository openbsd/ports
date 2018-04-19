# $OpenBSD: Makefile,v 1.38 2018/04/19 22:58:34 jturner Exp $

COMMENT =		minimal CGI library for web applications

DISTNAME =		kcgi-0.10.5
CATEGORIES =		www

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://kristaps.bsd.lv/kcgi/
MASTER_SITES =		https://kristaps.bsd.lv/kcgi/snapshots/
EXTRACT_SUFX =		.tgz

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += c

CONFIGURE_STYLE =	simple
USE_GMAKE =		Yes
MAKE_FILE =		GNUmakefile
MAKE_FLAGS =		PREFIX="${PREFIX}"

TEST_DEPENDS =		net/curl
TEST_TARGET =		regress

.include <bsd.port.mk>

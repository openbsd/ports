# $OpenBSD: Makefile,v 1.25 2016/10/19 01:46:15 jturner Exp $

COMMENT =		minimal CGI library for web applications

DISTNAME =		kcgi-0.9.1
CATEGORIES =		www

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://kristaps.bsd.lv/kcgi/
MASTER_SITES =		https://kristaps.bsd.lv/kcgi/snapshots/
EXTRACT_SUFX =		.tgz

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

NO_CONFIGURE =		Yes
USE_GMAKE =		Yes
MAKE_FILE =		GNUmakefile

TEST_DEPENDS =		net/curl
TEST_TARGET =		regress

.include <bsd.port.mk>

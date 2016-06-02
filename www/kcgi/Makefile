# $OpenBSD: Makefile,v 1.21 2016/06/02 11:38:49 bentley Exp $

COMMENT =		minimal CGI library for web applications

DISTNAME =		kcgi-0.8.3
CATEGORIES =		www
REVISION =		0

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://kristaps.bsd.lv/kcgi/
MASTER_SITES =		https://kristaps.bsd.lv/kcgi/snapshots/
EXTRACT_SUFX =		.tgz

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

NO_CONFIGURE =		Yes

TEST_DEPENDS =		net/curl
TEST_TARGET =		regress

.include <bsd.port.mk>

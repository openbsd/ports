# $OpenBSD: Makefile,v 1.2 2015/04/24 21:44:15 jturner Exp $

COMMENT =		minimal CGI library for web applications

DISTNAME =		kcgi-0.5.6
CATEGORIES =		www

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://kristaps.bsd.lv/kcgi/
MASTER_SITES =		http://kristaps.bsd.lv/kcgi/snapshots/
EXTRACT_SUFX =		.tgz

# ISC
PERMIT_PACKAGE_CDROM =	Yes

NO_CONFIGURE =		Yes

TEST_DEPENDS =		net/curl
TEST_TARGET =		regress

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.7 2015/07/19 04:41:17 jturner Exp $

COMMENT =		minimal CGI library for web applications

DISTNAME =		kcgi-0.6.3
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

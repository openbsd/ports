# $OpenBSD: Makefile,v 1.17 2016/03/04 20:15:38 jturner Exp $

COMMENT =		minimal CGI library for web applications

DISTNAME =		kcgi-0.7.8
CATEGORIES =		www

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://kristaps.bsd.lv/kcgi/
MASTER_SITES =		http://kristaps.bsd.lv/kcgi/snapshots/
EXTRACT_SUFX =		.tgz

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

NO_CONFIGURE =		Yes

TEST_DEPENDS =		net/curl
TEST_TARGET =		regress

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.10 2015/09/07 20:48:38 jturner Exp $

COMMENT =		minimal CGI library for web applications

DISTNAME =		kcgi-0.7.2
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

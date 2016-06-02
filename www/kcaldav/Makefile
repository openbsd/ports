# $OpenBSD: Makefile,v 1.4 2016/06/02 11:38:49 bentley Exp $

COMMENT =		a simple, safe, and minimal CalDAV server

DISTNAME =		kcaldav-0.1.4
REVISION =		1
CATEGORIES =		www

HOMEPAGE =		https://kristaps.bsd.lv/kcaldav/
MAINTAINER =		Aaron Poffenberger <akp@hypernote.com>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
WANTLIB +=		c expat m sqlite3

MASTER_SITES =		https://kristaps.bsd.lv/kcaldav/snapshots/
EXTRACT_SUFX =		.tgz

BUILD_DEPENDS =		www/kcgi

FAKE_FLAGS =		PREFIX=${WRKINST}${TRUEPREFIX} WWWPREFIX=${WRKINST}/${VARBASE}/www

# no doc on how to run tests
NO_TEST =		Yes

ALL_TARGET =		all libkcaldav.a
INSTALL_TARGET =	install installcgi

.include <bsd.port.mk>

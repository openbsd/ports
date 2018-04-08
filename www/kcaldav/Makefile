# $OpenBSD: Makefile,v 1.11 2018/04/08 08:30:37 stsp Exp $

COMMENT =		a simple, safe, and minimal CalDAV server

DISTNAME =		kcaldav-0.1.6
CATEGORIES =		www

HOMEPAGE =		https://kristaps.bsd.lv/kcaldav/
MAINTAINER =		Aaron Poffenberger <akp@hypernote.com>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
WANTLIB +=		c expat m sqlite3 pthread

MASTER_SITES =		https://kristaps.bsd.lv/kcaldav/snapshots/
EXTRACT_SUFX =		.tgz

BUILD_DEPENDS =		www/kcgi
LIB_DEPENDS =		databases/sqlite3

CONFIGURE_STYLE =	simple
USE_GMAKE = 		Yes
CONFIGURE_ARGS =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS =		PREFIX=${WRKINST}${TRUEPREFIX} \
			HTDOCSPREFIX=${WRKINST}/${VARBASE}/www/htdocs/kcaldav \
			CGIPREFIX=${WRKINST}/${VARBASE}/www/cgi-bin \
			CALPREFIX=${WRKINST}/${VARBASE}/www/caldav

# no doc on how to run tests
NO_TEST =		Yes

ALL_TARGET =		all libkcaldav.a
INSTALL_TARGET =	install installcgi

.include <bsd.port.mk>

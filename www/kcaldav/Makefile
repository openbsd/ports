COMMENT =		a simple, safe, and minimal CalDAV server

DISTNAME =		kcaldav-0.2.0
REVISION =		0
CATEGORIES =		www

HOMEPAGE =		https://kristaps.bsd.lv/kcaldav/
MAINTAINER =		Aaron Poffenberger <akp@hypernote.com>

# ISC
PERMIT_PACKAGE =	Yes

# "make port-lib-depends-check" can help
WANTLIB +=		c expat m sqlite3

MASTER_SITES =		https://kristaps.bsd.lv/kcaldav/snapshots/
EXTRACT_SUFX =		.tgz

BUILD_DEPENDS =		www/kcgi
LIB_DEPENDS =		databases/sqlite3

FAKE_FLAGS =		PREFIX=${WRKINST}${TRUEPREFIX} \
			HTDOCSPREFIX=${VARBASE}/www/htdocs/kcaldav \
			CGIPREFIX=${VARBASE}/www/cgi-bin \
			CALPREFIX=${VARBASE}/www/caldav

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

ALL_TARGET =		all libkcaldav.a
INSTALL_TARGET =	install installcgi
TEST_TARGET =		regress

post-install:
	ln -s kcaldav ${WRKINST}${VARBASE}/www/cgi-bin/kcaldav.cgi

.include <bsd.port.mk>

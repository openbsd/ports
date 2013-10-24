# $OpenBSD: Makefile,v 1.1.1.1 2013/10/24 01:59:44 william Exp $

COMMENT =		realtime console web log analyzer

DISTNAME =		goaccess-0.6

CATEGORIES =		www
HOMEPAGE =		http://goaccess.prosoftcorp.com/
MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>, \
			William Yodlowsky <william@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GeoIP c glib-2.0 m ncursesw pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=goaccess/}

LIB_DEPENDS =		devel/glib2 \
			net/GeoIP

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-geoip \
			--enable-utf8

CONFIGURE_ENV =		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
	@perl -pi -e s,ncursesw/curses.h,curses.h, ${WRKSRC}/*.[ch]

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.7 2010/07/30 11:29:44 ajacoutot Exp $

BROKEN =		needs an update

COMMENT =		immensly fast JPEG thumbnailer library
DISTNAME =		epeg-20071211
REVISION=		0

HOMEPAGE =		http://docs.enlightenment.org/api/epeg/html/

SHARED_LIBS =		epeg 0.0	# .0.9

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c jpeg

LIB_DEPENDS =		::graphics/jpeg

CONFIGURE_STYLE =	automake autoconf

USE_LIBTOOL =		Yes

AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9
AUTOMAKE_ENV =		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

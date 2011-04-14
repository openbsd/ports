# $OpenBSD: Makefile,v 1.36 2011/04/14 13:35:18 jasper Exp $

COMMENT =	SDL port of the legendary 2D platform shooter

DISTNAME =	abuse-0.7.1
REVISION =	0
EPOCH =		0
ABUSE_FRABS = 	abuse-frabs-2.11
CATEGORIES =	games x11

HOMEPAGE =	http://abuse.zoy.org/

MAINTAINER =	Antti Harri <iku@openbsd.fi>

# GPLv2 and public domain
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m pthread GL stdc++ usbhid SDL sndio

MASTER_SITES =	${HOMEPAGE}raw-attachment/wiki/Downloads/

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS =	devel/sdl

DISTFILES = 	${DISTNAME}.tar.gz ${ABUSE_FRABS}.tar.gz
EXTRACT_ONLY =	${DISTNAME}.tar.gz

MODULES =	converters/libiconv

# Needs AC_PROG_LIBTOOL
BUILD_DEPENDS +=devel/libtool
USE_LIBTOOL =	Yes

AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.10
CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

NO_REGRESS =	Yes
DATADIR =	${PREFIX}/share/abuse-frabs
SUBST_VARS =	DATADIR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure.ac \
		${WRKSRC}/src/sdlport/setup.cpp
	cd ${WRKSRC}; \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		autoreconf -fi

post-install:
	cd ${PREFIX}/share/ && \
		gzip -dc ${FULLDISTDIR}/${ABUSE_FRABS}.tar.gz | \
		tar xf -
	mv ${PREFIX}/share/${ABUSE_FRABS} ${PREFIX}/share/abuse-frabs

.include <bsd.port.mk>

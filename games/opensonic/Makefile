# $OpenBSD: Makefile,v 1.8 2013/06/23 17:51:31 dcoppa Exp $

COMMENT =		game based on the Sonic the Hedgehog universe

V =			0.1.2
DISTNAME =		opensnc-src${V}
PKGNAME =		opensonic-${V}
REVISION =		2

CATEGORIES=		games

HOMEPAGE =		http://opensnc.sourceforge.net
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=opensnc/}
#MASTER_SITES =		http://downloads.sourceforge.net/project/opensnc/Open%20Sonic/${V}/

# GPLv2 or later
PERMIT_PACKAGE_CDROM=	contains potentially copyrighted artwork
PERMIT_PACKAGE_FTP=	Yes

MODULES =		devel/cmake

BUILD_DEPENDS =		graphics/allegropng \
			audio/dumb

LIB_DEPENDS =		games/allegro \
			audio/libvorbis

WANTLIB =		alleg c ogg m pthread vorbis vorbisfile

CONFIGURE_ENV =		OPENSNC_ALLEGRO_CFLAGS="`allegro-config --cflags`" \
			OPENSNC_ALLEGRO_LIBS="`allegro-config --libs`" \
			OPENSNC_ALLEGRO_VERSION="`allegro-config --version`"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

post-install:
	echo "#!/bin/sh\ncd ${TRUEPREFIX}/share/opensonic\n./opensonic_launcher" > \
	    ${PREFIX}/bin/opensonic
	chmod 755 ${PREFIX}/bin/opensonic

NO_TEST=	Yes

.include <bsd.port.mk>

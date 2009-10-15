# $OpenBSD: Makefile,v 1.1.1.1 2009/10/15 14:39:50 phessler Exp $

COMMENT =		game based on the Sonic the Hedgehog universe

V =			0.1.2
DISTNAME =		opensnc-src${V}
PKGNAME =		opensonic-${V}

CATEGORIES=		games

HOMEPAGE =		http://opensnc.sourceforge.net
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=opensnc/}
#MASTER_SITES =		http://downloads.sourceforge.net/project/opensnc/Open%20Sonic/${V}/

# GPLv2 or later
PERMIT_PACKAGE_CDROM=	contains potentially copyrighted artwork
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= contains potentially copyrighted artwork
PERMIT_DISTFILES_FTP=	Yes

MODULES =		devel/cmake

BUILD_DEPENDS =		::graphics/allegropng

LIB_DEPENDS =		alleg::games/allegro \
			dumb::audio/dumb \
			vorbis,vorbisfile::audio/libvorbis

WANTLIB =		c ogg m sndio

do-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt
	cd ${WRKSRC} && env OPENSNC_ALLEGRO_LIBS="`allegro-config --libs`" \
	    OPENSNC_ALLEGRO_VERSION="`allegro-config --version`" cmake . 

post-install:
	echo "#!/bin/sh\ncd ${TRUEPREFIX}/share/opensonic\n./opensonic_launcher" > \
	    ${PREFIX}/bin/opensonic
	chmod 755 ${PREFIX}/bin/opensonic

NO_REGRESS=	Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.7 2013/03/11 11:07:40 espie Exp $

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

do-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt
	cd ${WRKBUILD} && env OPENSNC_ALLEGRO_LIBS="`allegro-config --libs`" \
	    OPENSNC_ALLEGRO_VERSION="`allegro-config --version`" cmake ${WRKSRC}

post-install:
	echo "#!/bin/sh\ncd ${TRUEPREFIX}/share/opensonic\n./opensonic_launcher" > \
	    ${PREFIX}/bin/opensonic
	chmod 755 ${PREFIX}/bin/opensonic

NO_TEST=	Yes

.include <bsd.port.mk>

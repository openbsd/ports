# $OpenBSD: Makefile,v 1.2 2010/10/10 10:26:37 kili Exp $

COMMENT =		kart racing game with OSS mascots

BASENAME =		supertuxkart-0.6.2a
DISTNAME =		${BASENAME}-src
PKGNAME =		${BASENAME}
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		http://supertuxkart.sourceforge.net

MAINTAINER =		Pascal Stumpf <ps_obsd@cubes.de>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		GL GLU SDL X11 Xi Xmu c m ogg openal pthread \
			stdc++ vorbis vorbisfile glut

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=supertuxkart/SuperTuxKart/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext

BUILD_DEPENDS =		::devel/plib
RUN_DEPENDS =		::devel/desktop-file-utils
LIB_DEPENDS =		::devel/sdl \
			::graphics/freeglut \
			::audio/openal \
			::audio/libvorbis

USE_X11 =		Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-libintl-prefix=${LOCALBASE} \
			--with-libiconv-prefix=${LOCALBASE}
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -liconv \
				-lGL -lGLU -lSDL -lXi -lXmu -lX11 -lglut \
				-lm -logg -pthread -lvorbis -lvorbisfile"

WRKDIST =		${WRKDIR}/${BASENAME}

pre-configure:
	find ${WRKSRC} -name Makefile.in | xargs perl -pi \
		-e 's,\$\(datadir\)/games,\$\(datadir\),g;' \
		-e 's,\$\(prefix\)/games,\$\(prefix\)/bin,g'

.include <bsd.port.mk>

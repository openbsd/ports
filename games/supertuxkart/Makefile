# $OpenBSD: Makefile,v 1.7 2011/05/08 20:14:54 kili Exp $

COMMENT =		kart racing game with OSS mascots

BASENAME =		supertuxkart-0.7
DISTNAME =		${BASENAME}-src
PKGNAME =		${BASENAME}

CATEGORIES =		games

HOMEPAGE =		http://supertuxkart.sourceforge.net

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		GL GLU Irrlicht SDL X11 Xi Xmu c fribidi m ogg openal \
			pthread stdc++ vorbis vorbisfile glut

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=supertuxkart/SuperTuxKart/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/sdl \
			graphics/freeglut \
			audio/openal>=0.0.8p7 \
			audio/libvorbis \
			x11/irrlicht \
			devel/fribidi

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-libintl-prefix=${LOCALBASE} \
			--with-libiconv-prefix=${LOCALBASE} \
			--with-irrlicht=${LOCALBASE}
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -liconv \
				-lGL -lGLU -lIrrlicht -lSDL -lXi -lXmu -lX11 \
				-lglut -lm -logg -pthread -lvorbis -lvorbisfile"

WRKDIST =		${WRKDIR}/${BASENAME}

pre-configure:
	find ${WRKSRC} -name Makefile.in | xargs perl -pi \
		-e 's,\$\(datadir\)/games,\$\(datadir\),g;' \
		-e 's,\$\(prefix\)/games,\$\(prefix\)/bin,g'

.include <bsd.port.mk>

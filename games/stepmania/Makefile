# $OpenBSD: Makefile,v 1.9 2014/03/20 18:07:59 ajacoutot Exp $

BROKEN-alpha=	libtomcrypt/src/headers/tomcrypt_cfg.h:130:6: error: #error You must specify a word size as well as endianess in tomcrypt_cfg.h

COMMENT = 	dance music game
CATEGORIES = 	games emulators
SHARED_ONLY =	Yes

DISTNAME = 	stepmania-5.0b2a
PKGNAME =	stepmania-5.0beta2a
REVISION =	1
EXTRACT_SUFX = 	-src.tar.bz2
HOMEPAGE =	http://www.stepmania.com
MASTER_SITES = 	${MASTER_SITE_SOURCEFORGE:=stepmania/}

# Code base is mostly BSD, with a few tidbits GPL
PERMIT_PACKAGE_CDROM = Yes
MAINTAINER =	Marc Espie <espie@openbsd.org>

WRKDIST = 	${WRKDIR}/stepmania-tip
CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += 	--disable-lua-binaries
CONFIGURE_ENV += 	CPPFLAGS=-I${LOCALBASE}/include  \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
NO_TEST =	Yes

MODULES =	devel/gettext

LIB_DEPENDS =	audio/libvorbis \
		audio/libmad \
		graphics/ffmpeg \
		graphics/glew \
		audio/pulseaudio \
		x11/gtk+2

# stepmania comes with its own copy of lua-5.1 with a supplementary function
# luaL_pushtype AND a supplementary keyword "cmd"  :(

WANTLIB += GL GLU X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xtst c fontconfig freetype
WANTLIB += m pthread stdc++ z
WANTLIB += GLEW avcodec avformat avutil bz2 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += mad ogg pulse swscale vorbis vorbisfile
WANTLIB += atk-1.0 cairo gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0
WANTLIB += jpeg pango-1.0 pangocairo-1.0 pangoft2-1.0 png

DATADIR = libdata/stepmania
D = 	Announcers BGAnimations BackgroundEffects BackgroundTransitions \
	Characters Courses Data NoteSkins Scripts Songs Themes

SUBST_VARS = DATADIR


# just so we can start the game directly to test.
post-build:
	cd ${WRKBUILD} && ln -sf src/stepmania && ln -sf src/GtkModule.so
	${SUBST_CMD} -c ${FILESDIR}/stepmania ${WRKBUILD}/stepexe

# sigh, no install, so do things manually
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${DATADIR}
.for i in $D
	cp -R ${WRKBUILD}/$i ${PREFIX}/${DATADIR}/$i
.endfor
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/${DATADIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/src/stepmania ${PREFIX}/libexec
	${INSTALL_DATA} ${WRKBUILD}/src/GtkModule.so ${PREFIX}/libexec
	${INSTALL_SCRIPT} ${WRKBUILD}/stepexe ${PREFIX}/bin/stepmania

# TODO: install more documentation ?

.include <bsd.port.mk>

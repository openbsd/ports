# $OpenBSD: Makefile,v 1.1.1.1 2013/11/03 00:00:32 espie Exp $

COMMENT = 	dance music game
CATEGORIES = 	games emulators
SHARED_ONLY =	Yes

DISTNAME = 	stepmania-5.0b2a
PKGNAME =	stepmania-5.0beta2a
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
NO_TESTS =	Yes

LIB_DEPENDS =	audio/libvorbis \
		audio/libmad \
		graphics/ffmpeg \
		graphics/glew \
		audio/pulseaudio \
		x11/gtk+2

# there's a lua copy inside stepmania, TODO not compile it, but
# there are some extra functions in there !
WANTLIB += GL GLU X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xtst c fontconfig freetype
WANTLIB += m pthread sndio stdc++ z
WANTLIB += GLEW avcodec avformat avutil bz2 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += iconv intl mad ogg pulse swscale vorbis vorbisfile
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
	${INSTALL_PROGRAM} ${WRKBUILD}/stepexe ${PREFIX}/bin/stepmania

# TODO: install more documentation ?

.include <bsd.port.mk>

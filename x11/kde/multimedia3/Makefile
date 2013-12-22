# $OpenBSD: Makefile,v 1.81 2013/12/22 19:24:34 zhuk Exp $

COMMENT =		K Desktop Environment, multimedia applications
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
REVISION =		16
DISTNAME =		kdemultimedia-${VERSION}
MODKDE_VERSION =	3.5.8
SHARED_LIBS +=	artsbuilder          1.0      # .0.0
SHARED_LIBS +=	artsmidi_idl         1.0      # .0.0
SHARED_LIBS +=	artsmidi             1.0      # .0.0
SHARED_LIBS +=	artsgui_idl          1.0      # .0.0
SHARED_LIBS +=	artsgui              1.0      # .0.0
SHARED_LIBS +=	artsgui_kde          1.0      # .0.0
SHARED_LIBS +=	artsmodulessynth     1.0      # .0.0
SHARED_LIBS +=	artsmodulescommon    1.0      # .0.0
SHARED_LIBS +=	artsmoduleseffects   1.0      # .0.0
SHARED_LIBS +=	artsmodulesmixers    1.0      # .0.0
SHARED_LIBS +=	artsmodules          1.0      # .0.0
SHARED_LIBS +=	artscontrolsupport   2.0      # .1.0
SHARED_LIBS +=	artscontrolapplet    2.0      # .1.0
SHARED_LIBS +=	arts_audiofile       0.0      # .0.0
SHARED_LIBS +=	kmidlib              1.0      # .0.0
SHARED_LIBS +=	kcddb                2.0      # .1.0
SHARED_LIBS +=	yafcore              1.0      # .0.0
SHARED_LIBS +=	yafxplayer           1.0      # .0.0
SHARED_LIBS +=	arts_xine            0.0      # .0.0
SHARED_LIBS +=	arts_akode           0.0      # .0.0
SHARED_LIBS +=	noatun               4.0      # .3.0
SHARED_LIBS +=	noatuncontrols       4.0      # .3.0
SHARED_LIBS +=	noatuntags           4.0      # .3.0
SHARED_LIBS +=	audiocdplugins       2.0      # .1.0
SHARED_LIBS +=	arts_mpeglib         1.0      # .0.3
SHARED_LIBS +=	arts_splay           1.0      # .0.0
SHARED_LIBS +=	arts_mpeglib-0.3.0   1.0      # .0.3

MODULES =	x11/kde devel/gettext

LIB_DEPENDS =	x11/kde/libs3 \
		x11/kde/arts3 \
		audio/libogg \
		audio/flac \
		audio/libvorbis \
		audio/cdparanoia \
		audio/taglib \
		gstreamer->=0.10,<0.11:multimedia/gstreamer-0.10/core \
		devel/libtool,-ltdl \
		multimedia/libtheora \
		audio/akode \
		multimedia/xine-lib

RUN_DEPENDS =	graphics/xanim \
		devel/desktop-file-utils \
		x11/gtk+2,-guic

SEPARATE_BUILD =	flavored
CONFIGURE_ARGS +=	--without-lame
CONFIGURE_ENV +=	aktion_has_xanim=yes

WANTLIB += FLAC>=8 GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi
WANTLIB += Xinerama Xmu Xrandr Xrender Xt Xv Xxf86dga Xxf86vm akode
WANTLIB += art_lgpl_2 audiofile avutil c cdda_interface cdda_paranoia
WANTLIB += drm expat fam ffi fontconfig freetype glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstreamer-0.10 gthread-2.0 idn jpeg lcms
WANTLIB += lib/kde3/DCOP lib/kde3/artsc lib/kde3/artsflow
WANTLIB += lib/kde3/artsflow_idl lib/kde3/artskde lib/kde3/kdecore>=6
WANTLIB += lib/kde3/kdefakes lib/kde3/kdefx lib/kde3/kdeprint
WANTLIB += lib/kde3/kdesu lib/kde3/kdeui lib/kde3/khtml lib/kde3/kio
WANTLIB += lib/kde3/kjs lib/kde3/kmedia2_idl lib/kde3/kmediaplayer
WANTLIB += lib/kde3/kmid lib/kde3/kparts lib/kde3/kutils
WANTLIB += lib/kde3/kwalletclient lib/kde3/mcop lib/kde3/qtmcop
WANTLIB += lib/kde3/soundserver_idl ltdl m mad mng ogg ossaudio pcre
WANTLIB += pcreposix png pthread sndio stdc++ tag theora util
WANTLIB += vorbis vorbisenc vorbisfile xcb xine xml2 z


post-extract:
	cp ${FILESDIR}/audioIO_sndio.cpp ${WRKSRC}/mpeglib/lib/util/audio

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODKDE_HTML_SUBDIR}/en/common

.include <bsd.port.mk>

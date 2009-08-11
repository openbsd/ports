# $OpenBSD: Makefile,v 1.62 2009/08/11 08:40:40 ajacoutot Exp $

COMMENT = 		K Desktop Environment, multimedia applications
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdemultimedia-${VERSION}
PKGNAME =		${DISTNAME}p2
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

FLAVORS =	debug
LIB_DEPENDS = 	DCOP,kdecore.>=6,kdefakes,kdefx,kdesu,kdeui,kio,khtml,kmid,kparts,kmediaplayer,kjs,kutils,kwalletclient,kdeprint::x11/kde/libs3 \
	artsc,artsflow,artsflow_idl,artskde,kmedia2_idl,mcop,qtmcop,soundserver_idl::x11/kde/arts3 \
		ogg::audio/libogg \
		FLAC.>=8::audio/flac \
		vorbis,vorbisenc,vorbisfile::audio/libvorbis \
		cdda_paranoia,cdda_interface::audio/cdparanoia \
		tag::audio/taglib \
		gstreamer-0.10:gstreamer->=0.10,<0.11:multimedia/gstreamer-0.10/core \
		ltdl::devel/libtool,-ltdl \
		theora::multimedia/libtheora \
		akode::audio/akode \
		xine::multimedia/xine-lib

EXTRA_CONFIG =	xdg/menus/applications-merged/kde-multimedia-music.menu 
SAMPLECONFDIR =	${PREFIX}/share/apps/kde-conf-sample

FAKE_FLAGS =	sysconfdir=${SAMPLECONFDIR}
RUN_DEPENDS =	:xanim-*:graphics/xanim \
		:desktop-file-utils-*:devel/desktop-file-utils

SEPARATE_BUILD =	flavored
CONFIGURE_ARGS +=	--without-lame
CONFIGURE_ENV +=	aktion_has_xanim=yes

WANTLIB =	ICE SM X11 Xau Xdmcp Xext Xrender Xv Xxf86dga Xxf86vm \
		art_lgpl_2 audiofile c expat fam fontconfig freetype \
		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 iconv idn intl \
		jpeg m mad ossaudio pcre pcreposix png pthread rpcsvc sndio \
		stdc++ util xml2 z pthread-stubs xcb

.include <bsd.port.mk>

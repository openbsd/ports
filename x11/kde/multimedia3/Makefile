# $OpenBSD: Makefile,v 1.43 2006/11/05 13:02:30 espie Exp $

COMMENT= 		"K Desktop Environment, multimedia applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.5
DISTNAME=		kdemultimedia-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION=		3.5.3
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
SHARED_LIBS +=	artsmidi             1.0      # .0.0
SHARED_LIBS +=	artsgui              1.0      # .0.0
SHARED_LIBS +=	artsgui_kde          1.0      # .0.0
SHARED_LIBS +=	artsmodulessynth     1.0      # .0.0
SHARED_LIBS +=	artsmodulescommon    1.0      # .0.0
SHARED_LIBS +=	artsmoduleseffects   1.0      # .0.0
SHARED_LIBS +=	artsmodulesmixers    1.0      # .0.0
SHARED_LIBS +=	artsmodules          1.0      # .0.0
SHARED_LIBS +=	artscontrolsupport   2.0      # .1.0
SHARED_LIBS +=	artscontrolapplet    2.0      # .1.0
SHARED_LIBS +=	yafxplayer           1.0      # .0.0
SHARED_LIBS +=	noatun               4.0      # .3.0
SHARED_LIBS +=	noatuntags           4.0      # .3.0
SHARED_LIBS +=	audiocdplugins       2.0      # .1.0
SHARED_LIBS +=	arts_mpeglib         1.0      # .0.3
SHARED_LIBS +=	arts_splay           1.0      # .0.0

FLAVORS=		debug
LIB_DEPENDS= DCOP,kdecore.>=6,kdefakes,kdefx,kdesu,kdeui,kio,khtml,kmid,kparts,kmediaplayer,kjs,kutils,kwalletclient,kdeprint::x11/kde/libs3 \
	artsc,artskde::x11/kde/arts3 \
	ogg::audio/libogg \
	FLAC::audio/flac \
	vorbis,vorbisenc::audio/libvorbis \
	cdda_paranoia,cdda_interface::audio/cdparanoia \
	tag::audio/taglib \
	popt::devel/popt \
	gstreamer-0.8::devel/gstreamer \
	ltdl::devel/libtool,-ltdl \
	theora::multimedia/libtheora \
	::devel/gstreamer-plugins \
	akode::audio/akode \
	xine::multimedia/xine-lib

EXTRA_CONFIG=	xdg/menus/applications-merged/kde-multimedia-music.menu 
SAMPLECONFDIR=${PREFIX}/share/apps/kde-conf-sample

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

FAKE_FLAGS=$(MAKE_FLAGS) DESTDIR=${WRKINST} sysconfdir=${SAMPLECONFDIR}
RUN_DEPENDS=:xanim-*:graphics/xanim
SEPARATE_BUILD=flavored
CONFIGURE_ARGS+=--without-lame
CONFIGURE_ENV+=aktion_has_xanim=yes

WANTLIB=	ICE SM X11 Xext Xrender Xv Xxf86dga Xxf86vm art_lgpl_2 \
		artsflow artsflow_idl audiofile c esd glib-2.0 \
		gmodule-2.0 gthread-2.0 iconv intl jpeg kmedia2_idl m \
		mad mcop ossaudio png pthread qtmcop soundserver_idl stdc++ \
		util vorbisfile z gobject-2.0 pcreposix xml2 pcre freetype \
		idn

.include <bsd.port.mk>

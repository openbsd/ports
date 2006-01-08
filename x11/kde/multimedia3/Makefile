# $OpenBSD: Makefile,v 1.32 2006/01/08 16:03:28 espie Exp $

COMMENT= 		"K Desktop Environment, multimedia applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.4.3
DISTNAME=		kdemultimedia-${VERSION}
PKGNAME=		${DISTNAME}p0
MODKDE_VERSION=		3.4
SHARED_LIBS=		akode			1.0 \
			arts_mpeglib-0.3.0	0.3 \
			arts_mpeglib		0.3 \
			arts_splay		0.0 \
			artsbuilder		0.0 \
			artscontrolapplet	1.0 \
			artscontrolsupport	1.0 \
			artsgui			0.0 \
			artsgui_idl		0.0 \
			artsgui_kde		0.0 \
			artsmidi		0.0 \
			artsmidi_idl		0.0 \
			artsmodules		0.0 \
			artsmodulescommon	0.0 \
			artsmoduleseffects	0.0 \
			artsmodulesmixers	0.0 \
			artsmodulessynth	0.0 \
			audiocdplugins		1.0 \
			kcddb			1.0 \
			kmidlib			0.0 \
			noatun			3.0 \
			noatuncontrols		3.0 \
			noatuntags		3.0 \
			yafcore			0.0 \
			yafxplayer		0.0

FLAVORS=		debug
LIB_DEPENDS= DCOP,kdecore.6,kdefakes,kdefx,kdesu,kdeui,kio,khtml,kmid,kparts,kmediaplayer,kjs,kutils,kwalletclient,kdeprint::x11/kde/libs3 \
	artsc,artskde::x11/kde/arts3 \
	ogg::audio/libogg \
	OggFLAC,FLAC::audio/flac \
	vorbis,vorbisenc::audio/libvorbis \
	cdda_paranoia,cdda_interface::audio/cdparanoia \
	mpeg::graphics/mpeg-lib \
	tag::audio/taglib \
	speex::audio/speex \
	popt::devel/popt \
	gstreamer-0.8.0.0::devel/gstreamer \
	ltdl::devel/libtool,-ltdl \
	theora::multimedia/libtheora

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
		artsflow artsflow_idl audiofile c esd glib-2.0.0.0 \
		gmodule-2.0.0.0 gthread-2.0.0.0 iconv intl jpeg kmedia2_idl m \
		mad mcop ossaudio png pthread qtmcop soundserver_idl stdc++ \
		util vorbisfile z gobject-2.0.0.0 pcreposix xml2 pcre

.include <bsd.port.mk>

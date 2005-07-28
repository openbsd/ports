# $OpenBSD: Makefile,v 1.30 2005/07/28 08:47:41 espie Exp $

COMMENT= 		"K Desktop Environment, multimedia applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.4.2
DISTNAME=		kdemultimedia-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION=		3.4

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
	ltdl::devel/libtool,-ltdl

EXTRA_CONFIG=	xdg/menus/applications-merged/kde-multimedia-music.menu 
SAMPLECONFDIR=${PREFIX}/share/apps/kde-conf-sample

FAKE_FLAGS=DESTDIR=${WRKINST} sysconfdir=${SAMPLECONFDIR}
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

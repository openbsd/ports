# $OpenBSD: Makefile,v 1.24 2004/10/03 09:03:41 sturm Exp $

COMMENT= 		"K Desktop Environment, multimedia applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.3.0
DISTNAME=		kdemultimedia-${VERSION}
MODKDE_VERSION=		3.3.0

LIB_DEPENDS= DCOP,kdecore.6,kdefakes,kdefx,kdesu,kdeui,kio,kmid,kparts,kmediaplayer,kutils::x11/kde/libs3 \
	artsc,artskde::x11/kde/arts3 \
	FLAC::audio/flac \
	ogg::audio/libogg \
	vorbis,vorbisenc::audio/libvorbis \
	cdda_paranoia,cdda_interface::audio/cdparanoia \
	mpeg::graphics/mpeg-lib

EXTRA_CONFIG=	xdg/menus/applications-merged/kde-multimedia-music.menu 
SAMPLECONFDIR=${PREFIX}/share/apps/kde-conf-sample

FAKE_FLAGS=DESTDIR=${WRKINST} sysconfdir=${SAMPLECONFDIR}
RUN_DEPENDS=:xanim-*:graphics/xanim
SEPARATE_BUILD=flavored
CONFIGURE_ARGS+=--without-lame
CONFIGURE_ENV+=aktion_has_xanim=yes

.include <bsd.port.mk>

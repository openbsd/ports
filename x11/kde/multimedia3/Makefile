# $OpenBSD: Makefile,v 1.20 2004/03/07 21:08:44 espie Exp $

COMMENT= 		"X11 toolkit, multimedia applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.2.1
DISTNAME=		kdemultimedia-${VERSION}
MODKDE_VERSION=		3.2

LIB_DEPENDS= DCOP,kdecore.6,kdefakes,kdefx,kdesu,kdeui,kio,kmid,kparts,kmediaplayer,kutils::x11/kde/libs3 \
	artsc,artskde::x11/kde/arts3 \
	ogg::audio/libogg \
	vorbis,vorbisenc::audio/libvorbis \
	cdda_paranoia,cdda_interface::audio/cdparanoia


RUN_DEPENDS=:xanim-*:graphics/xanim
SEPARATE_BUILD=flavored
CONFIGURE_ARGS+=--without-lame
CONFIGURE_ENV+=aktion_has_xanim=yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.5 2002/07/16 12:20:43 espie Exp $

COMMENT= 		"X11 toolkit, multimedia applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.0.2
DISTNAME=		kdemultimedia-${VERSION}

LIB_DEPENDS= DCOP,kdefx,kdesu,kdeui,kio,kmid,kparts,kdecore.4::x11/kde/libs3 \
	artsc,artskde::x11/kde/arts3 \
	ogg::audio/libogg \
	vorbis,vorbisfile::audio/libvorbis \
	cdda_paranoia,cdda_interface::audio/cdparanoia

RUN_DEPENDS=:xanim-*:graphics/xanim
SEPARATE_BUILD=simple


post-install:
	cd ${PREFIX}/bin && mv -f timidity ktimidity

.include <bsd.port.mk>

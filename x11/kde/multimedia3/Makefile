# $OpenBSD: Makefile,v 1.3 2002/04/21 11:03:58 espie Exp $

COMMENT= 		"X11 toolkit, multimedia applications"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.504
VERSION=		3.0
DISTNAME=		kdemultimedia-${VERSION}

LIB_DEPENDS= DCOP,kdefx,kdesu,kdeui,kio,kmid,kparts::x11/kde/libs3 \
	artsc,artskde::x11/kde/arts3 \
	ogg::audio/libogg \
	vorbis,vorbisfile::audio/libvorbis \
	cdda_paranoia,cdda_interface::audio/cdparanoia

RUN_DEPENDS=:xanim-*:graphics/xanim


post-install:
	cd ${PREFIX}/bin && mv -f timidity ktimidity

.include <bsd.port.mk>

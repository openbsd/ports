# $OpenBSD: Makefile,v 1.12 2003/04/05 14:53:39 espie Exp $

COMMENT= 		"X11 toolkit, multimedia applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.1.1
DISTNAME=		kdemultimedia-${VERSION}

LIB_DEPENDS= DCOP,kdefx,kdesu,kdeui,kio,kmid,kparts,kdecore.4,kmediaplayer,kdefakes::x11/kde/libs3 \
	artsc,artskde::x11/kde/arts3 \
	ogg::audio/libogg \
	vorbis,vorbisfile,vorbisenc::audio/libvorbis \
	cdda_paranoia,cdda_interface::audio/cdparanoia


RUN_DEPENDS=:xanim-*:graphics/xanim
SEPARATE_BUILD=flavored
CONFIGURE_ARGS+=--without-lame


post-install:
	cd ${PREFIX}/bin && mv -f timidity ktimidity
	# necessary for non-elf toolchains
	cd ${PREFIX}/lib && ln -s kde3/libkaboodlepart.so.0.0 

.include <bsd.port.mk>

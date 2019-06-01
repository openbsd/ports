# $OpenBSD: Makefile,v 1.46 2019/06/01 11:49:15 ajacoutot Exp $

COMMENT=		open source client for Windows Terminal Server

V=			1.8.6
DISTNAME=		rdesktop-$V

CATEGORIES=		x11 net

MASTER_SITES=		https://github.com/rdesktop/rdesktop/releases/download/v$V/

HOMEPAGE=		http://www.rdesktop.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xrandr ao c crypto iconv pcsclite pthread samplerate
WANTLIB += ssl

LIB_DEPENDS=		audio/libao \
			audio/libsamplerate \
			converters/libiconv \
			security/pcsc-lite

NO_TEST=		Yes

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_STYLE=	autoreconf

CONFIGURE_ARGS=		--with-x=${X11BASE} \
			--with-sound=libao \
			--enable-smartcard \
			--disable-credssp

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.44 2019/02/06 14:22:39 sthen Exp $

COMMENT=	open source client for Windows Terminal Server

V=		1.8.4
DISTNAME=	rdesktop-$V

CATEGORIES=	x11 net

MASTER_SITES=	https://github.com/rdesktop/rdesktop/releases/download/v$V/

HOMEPAGE=	http://www.rdesktop.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xrandr ao c crypto iconv pcsclite pthread ssl

LIB_DEPENDS=	audio/libao \
		converters/libiconv \
		security/pcsc-lite

NO_TEST=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-x=${X11BASE} \
		--with-sound=libao \
		--enable-smartcard \
		--disable-credssp

.include <bsd.port.mk>

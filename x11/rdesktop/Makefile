# $OpenBSD: Makefile,v 1.41 2014/01/31 17:37:37 gsoares Exp $

COMMENT=	open source client for Windows Terminal Server
DISTNAME=	rdesktop-1.8.1
CATEGORIES=	x11 net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rdesktop/}

HOMEPAGE=	http://www.rdesktop.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	X11 Xrandr ao c crypto pcsclite pthread ssl

MODULES=	converters/libiconv

LIB_DEPENDS=	audio/libao \
		security/pcsc-lite

NO_TEST=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-x=${X11BASE} \
		--with-sound=libao \
		--enable-smartcard \
		--disable-credssp

.include <bsd.port.mk>

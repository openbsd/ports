# $OpenBSD: Makefile,v 1.43 2016/08/28 10:17:13 jca Exp $

COMMENT=	open source client for Windows Terminal Server
DISTNAME =	rdesktop-1.8.3
REVISION=	0
CATEGORIES=	x11 net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rdesktop/}

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

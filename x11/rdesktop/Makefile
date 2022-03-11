COMMENT=		open source client for Windows Terminal Server

V=			1.9.0
DISTNAME=		rdesktop-$V

CATEGORIES=		x11 net

MASTER_SITES=		https://github.com/rdesktop/rdesktop/releases/download/v$V/

HOMEPAGE=		https://www.rdesktop.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcursor Xrandr ao c gmp gnutls hogweed iconv nettle
WANTLIB += pcsclite pthread samplerate tasn1

LIB_DEPENDS=		audio/libao \
			audio/libsamplerate \
			converters/libiconv \
			security/gnutls \
			security/pcsc-lite

NO_TEST=		Yes

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_STYLE=	autoreconf

CONFIGURE_ARGS=		--with-x=${X11BASE} \
			--with-sound=libao \
			--enable-smartcard \
			--disable-credssp

CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

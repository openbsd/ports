COMMENT=	XMPP desktop client
VERSION=	0.3.0
DISTNAME=	dino-${VERSION}
CATEGORIES=	net x11

SHARED_LIBS +=	crypto-vala               0.0 # 0.0
SHARED_LIBS +=	dino                      1.0 # 0.0
SHARED_LIBS +=	qlite                     0.0 # 0.1
SHARED_LIBS +=	xmpp-vala                 1.0 # 0.1

HOMEPAGE=	https://dino.im/

MASTER_SITES=	https://github.com/dino/dino/releases/download/v${VERSION}/

MAINTAINER=	Paco Esteban <paco@openbsd.org>

# GPLv3 only
PERMIT_PACKAGE=	Yes

MODULES=	devel/cmake
BUILD_DEPENDS=	devel/gettext,-tools \
		lang/vala
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS=	devel/libgee \
		devel/libsoup \
		graphics/libqrencode \
		multimedia/gstreamer1/plugins-base \
		net/libnice \
		net/libsignal-protocol-c \
		security/gnutls \
		security/gpgme \
		security/libgcrypt \
		security/libsrtp \
		textproc/gspell \
		textproc/icu4c \
		x11/gtk+3

# links against plugins-base, dlopen()s plugins-good
LIB_DEPENDS +=	multimedia/gstreamer1/plugins-good

WANTLIB += atk-1.0 c cairo cairo-gobject enchant-2 gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnutls gobject-2.0 gpgme gspell-1 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstreamer-1.0 gstrtp-1.0 gtk-3 harfbuzz
WANTLIB += icudata icuuc intl m nice pango-1.0 pangocairo-1.0
WANTLIB += qrencode signal-protocol-c soup-2.4 sqlite3 srtp2

CONFIGURE_ARGS =	-DBUILD_TESTS=ON

do-test:
	find ${WRKBUILD} -type f -perm -+x -name \*-test -print -exec {} \;

.include <bsd.port.mk>

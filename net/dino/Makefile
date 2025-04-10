COMMENT=	XMPP desktop client
VERSION=	0.4.5
DISTNAME=	dino-${VERSION}
CATEGORIES=	net x11

SHARED_LIBS +=	crypto-vala               0.1 # 0.0
SHARED_LIBS +=	dino                      3.2 # 0.0
SHARED_LIBS +=	qlite                     0.1 # 0.1
SHARED_LIBS +=	xmpp-vala                 3.2 # 0.1

HOMEPAGE=	https://dino.im/

SITES=		https://github.com/dino/dino/releases/download/v${VERSION}/

# GPLv3 only
PERMIT_PACKAGE=	Yes

MODULES=	devel/cmake
BUILD_DEPENDS=	devel/gettext,-tools \
		lang/vala
RUN_DEPENDS=	devel/desktop-file-utils \
		multimedia/gstreamer1/plugins-good \
		x11/gtk+4,-guic
LIB_DEPENDS=	audio/libcanberra,-main \
		devel/libgee \
		devel/libsoup3 \
		graphics/libqrencode \
		multimedia/gstreamer1/plugins-base \
		net/libnice \
		net/libsignal-protocol-c \
		security/gnutls \
		security/gpgme \
		security/libgcrypt \
		security/libsrtp \
		textproc/icu4c \
		x11/gnome/libadwaita \
		x11/gtk+4

WANTLIB += adwaita-1 c cairo cairo-gobject canberra gcrypt gdk_pixbuf-2.0
WANTLIB += gee-0.8 gio-2.0 glib-2.0 gmodule-2.0 gnutls gobject-2.0
WANTLIB += gpgme graphene-1.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstreamer-1.0 gstrtp-1.0 gstvideo-1.0 gtk-4 harfbuzz
WANTLIB += icudata icuuc intl m nice pango-1.0 pangocairo-1.0
WANTLIB += qrencode signal-protocol-c soup-3.0 sqlite3 srtp2 vulkan


CONFIGURE_ARGS =	-DBUILD_TESTS=ON \
			-DUSE_SOUP3=ON \
			-DENABLED_PLUGINS=notification-sound

MODCMAKE_LDFLAGS =		-L${LOCALBASE}/lib

do-test:
	find ${WRKBUILD} -type f -perm -+x -name \*-test -print -exec {} \;

.include <bsd.port.mk>

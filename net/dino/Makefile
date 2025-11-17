COMMENT=	XMPP desktop client
VERSION=	0.5.1
DISTNAME=	dino-${VERSION}
CATEGORIES=	net x11

SHARED_LIBS +=	crypto-vala               1.1 # 0.5.1
SHARED_LIBS +=	dino                      4.1 # 0.5.1
SHARED_LIBS +=	qlite                     1.1 # 0.5.1
SHARED_LIBS +=	xmpp-vala                 4.1 # 0.5.1

HOMEPAGE=	https://dino.im/

SITES=		https://github.com/dino/dino/releases/download/v${VERSION}/

MAINTAINER=	Kirill A. Korinsky <kirill@korins.ky>

# GPLv3 only
PERMIT_PACKAGE=	Yes

MODULES=	devel/meson
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
		net/libomemo-c \
		security/gnutls \
		security/gpgme \
		security/libgcrypt \
		security/libsrtp \
		textproc/icu4c \
		x11/gnome/libadwaita \
		x11/gtk+4

WANTLIB += adwaita-1 c cairo canberra gcrypt gdk_pixbuf-2.0 gee-0.8
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnutls gobject-2.0 gpgme
WANTLIB += graphene-1.0 gstapp-1.0 gstbase-1.0 gstreamer-1.0 gstrtp-1.0
WANTLIB += gstvideo-1.0 gtk-4 icuuc intl m nice pango-1.0 qrencode
WANTLIB += omemo-c soup-3.0 sqlite3 srtp2

CONFIGURE_ARGS=	-Dplugin-notification-sound=enabled \
		-Dplugin-rtp-webrtc-audio-processing=disabled

.include <bsd.port.mk>

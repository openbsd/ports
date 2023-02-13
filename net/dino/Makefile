COMMENT=	XMPP desktop client
VERSION=	0.4.0
DISTNAME=	dino-${VERSION}
CATEGORIES=	net x11

SHARED_LIBS +=	crypto-vala               0.0 # 0.0
SHARED_LIBS +=	dino                      2.0 # 0.0
SHARED_LIBS +=	qlite                     0.0 # 0.1
SHARED_LIBS +=	xmpp-vala                 2.0 # 0.1

HOMEPAGE=	https://dino.im/

MASTER_SITES=	https://github.com/dino/dino/releases/download/v${VERSION}/

MAINTAINER=	Klemens Nanni <kn@openbsd.org>

# GPLv3 only
PERMIT_PACKAGE=	Yes

MODULES=	devel/cmake
BUILD_DEPENDS=	devel/gettext,-tools \
		lang/vala
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+4,-guic
LIB_DEPENDS=	devel/libgee \
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
		x11/gtk+4

# dlopen()ed
LIB_DEPENDS +=	x11/gnome/libadwaita

# links against plugins-base, dlopen()s plugins-good
LIB_DEPENDS +=	multimedia/gstreamer1/plugins-good

WANTLIB += c cairo cairo-gobject gcrypt gdk_pixbuf-2.0 gee-0.8
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnutls gobject-2.0 gpgme
WANTLIB += graphene-1.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB += gstrtp-1.0 gstvideo-1.0 gtk-4 harfbuzz icudata icuuc
WANTLIB += intl m nice pango-1.0 pangocairo-1.0 qrencode signal-protocol-c
WANTLIB += soup-3.0 sqlite3 srtp2

CONFIGURE_ARGS =	-DBUILD_TESTS=ON -DUSE_SOUP3=yes

MODCMAKE_LDFLAGS =		-L${LOCALBASE}/lib

do-test:
	find ${WRKBUILD} -type f -perm -+x -name \*-test -print -exec {} \;

.include <bsd.port.mk>

BROKEN-hppa=	serverpath.h:17:19: error: variable 'CServerPath final' has initializer but incomplete type
BROKEN-alpha=	serverpath.h:17:19: error: variable 'CServerPath final' has initializer but incomplete type

COMMENT=	fast FTP and SFTP GUI client with a lot of features

V=		3.67.0
PKGNAME=	filezilla-$V
DISTNAME=	FileZilla_$V_src

SHARED_LIBS+=	fzclient-commonui-private	4.1
SHARED_LIBS+=	fzclient-private		10.0

CATEGORIES=	net

HOMEPAGE=	https://www.filezilla-project.org/

MAINTAINER=	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SDL2 SM X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xss Xtst Xxf86vm aspell atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject crypto curl dbus-1 enchant-2
WANTLIB += epoll-shim epoxy execinfo expat ffi filezilla fontconfig
WANTLIB += freetype fribidi gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 gpg-error
WANTLIB += graphite2 gspell-1 gthread-2.0 gtk-3 harfbuzz hogweed
WANTLIB += iconv icudata icuuc idn idn2 intl jpeg lzma m mspack
WANTLIB += nettle nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_quictls
WANTLIB += notify p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre2-32 pcre2-8 pixman-1 png pugixml samplerate secret-1
WANTLIB += sndio sqlite3 ssl tasn1 tiff unistring usbhid wayland-client
WANTLIB += wayland-cursor wayland-egl wx_baseu-3.2 wx_baseu_xml-3.2
WANTLIB += wx_gtk3u_aui-3.2 wx_gtk3u_core-3.2 wx_gtk3u_html-3.2
WANTLIB += wx_gtk3u_xrc-3.2 xcb xcb-render xcb-shm xkbcommon z
WANTLIB += zstd

SITES=		https://download.filezilla-project.org/client/
EXTRACT_SUFX=	.tar.xz

# c++17
COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	databases/sqlite3 \
		devel/harfbuzz \
		devel/libidn \
		net/libfilezilla>=0.47.0 \
		security/gnutls \
		textproc/pugixml \
		x11/dbus \
		x11/wxWidgets>=3.0.4
BUILD_DEPENDS=	devel/cppunit \
		devel/gettext,-tools \
		devel/xdg-utils
RUN_DEPENDS=	devel/desktop-file-utils \
		devel/xdg-utils \
		x11/gtk+4,-guic

FAKE_FLAGS=	docsdir="${PREFIX}/share/examples/filezilla/"

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=autoreconf
CONFIGURE_ARGS=	--disable-manualupdatecheck \
		--with-dbus
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GREP=/usr/bin/grep \
		SED=/usr/bin/sed

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15

WRKDIST=	${WRKDIR}/filezilla-$V

.include <bsd.port.mk>

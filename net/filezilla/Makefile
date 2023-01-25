BROKEN-hppa=	serverpath.h:17:19: error: variable 'CServerPath final' has initializer but incomplete type
BROKEN-alpha=	serverpath.h:17:19: error: variable 'CServerPath final' has initializer but incomplete type

COMMENT=	fast FTP and SFTP GUI client with a lot of features

V=		3.63.0
PKGNAME=	filezilla-$V
DISTNAME=	FileZilla_$V_src

SHARED_LIBS+=	fzclient-commonui-private	4.0
SHARED_LIBS+=	fzclient-private		6.0

CATEGORIES=	net

HOMEPAGE=	https://www.filezilla-project.org/

MAINTAINER=	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX} ICE SDL2 SM X11 Xau Xcomposite Xcursor
WANTLIB +=	Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB +=	Xss Xxf86vm atk-1.0 atk-bridge-2.0 atspi brotlidec
WANTLIB +=	brotlienc c cairo cairo-gobject dbus-1 epoxy execinfo
WANTLIB +=	expat ffi filezilla fontconfig freetype fribidi gdk-3
WANTLIB +=	gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls
WANTLIB +=	gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz hogweed
WANTLIB +=	iconv idn idn2 intl jpeg lzma m mspack nettle notify
WANTLIB +=	p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8
WANTLIB +=	pixman-1 png pugixml samplerate sndio sqlite3 tasn1
WANTLIB +=	tiff unistring usbhid wx_baseu-3.0 wx_baseu_xml-3.0
WANTLIB +=	wx_gtk3u_adv-3.0 wx_gtk3u_aui-3.0 wx_gtk3u_core-3.0
WANTLIB +=	wx_gtk3u_html-3.0 wx_gtk3u_xrc-3.0 xcb xcb-render xcb-shm
WANTLIB +=	z zstd

MASTER_SITES=	https://download.filezilla-project.org/client/
EXTRACT_SUFX=	.tar.bz2

# c++17
COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	databases/sqlite3 \
		devel/harfbuzz \
		devel/libidn \
		net/libfilezilla>=0.40.0 \
		security/gnutls \
		textproc/pugixml \
		x11/dbus \
		x11/wxWidgets>=3.0.4
BUILD_DEPENDS=	devel/cppunit \
		devel/gettext,-tools \
		devel/xdg-utils
RUN_DEPENDS=	devel/desktop-file-utils \
		devel/xdg-utils \
		x11/gtk+3,-guic

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

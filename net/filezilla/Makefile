# $OpenBSD: Makefile,v 1.62 2019/07/12 20:48:26 sthen Exp $

COMMENT=	fast FTP and SFTP GUI client with a lot of features
BROKEN-hppa=	serverpath.h:17:19: error: variable 'CServerPath final' has initializer but incomplete type
BROKEN-alpha=	serverpath.h:17:19: error: variable 'CServerPath final' has initializer but incomplete type

V=		3.41.2
PKGNAME=	filezilla-$V
DISTNAME=	FileZilla_$V_src
EXTRACT_SUFX=	.tar.bz2
REVISION=	1

CATEGORIES=	net

MASTER_SITES=	https://download.filezilla-project.org/client/
HOMEPAGE=	https://www.filezilla-project.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SDL2 SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += dbus-1 epoxy expat ffi filezilla fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gnutls gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz hogweed iconv idn idn2 intl jpeg m mspack
WANTLIB += nettle notify p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pugixml samplerate sndio sqlite3
WANTLIB += tasn1 tiff unistring usbhid wx_baseu-3.0 wx_baseu_xml-3.0
WANTLIB += wx_gtk3u_adv-3.0 wx_gtk3u_aui-3.0 wx_gtk3u_core-3.0
WANTLIB += wx_gtk3u_html-3.0 wx_gtk3u_xrc-3.0 xcb xcb-render xcb-shm
WANTLIB += z

COMPILER =	base-clang ports-gcc

LIB_DEPENDS=	databases/sqlite3 \
		devel/harfbuzz \
		devel/libidn \
		net/libfilezilla \
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

SEPARATE_BUILD= Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-dbus \
		--with-tinyxml=builtin \
		--disable-manualupdatecheck
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GREP=/usr/bin/grep \
		SED=/usr/bin/sed

USE_GMAKE=	Yes
WRKDIST=	${WRKDIR}/filezilla-$V

FAKE_FLAGS+=	docsdir="${PREFIX}/share/examples/filezilla/"

do-test:
	@cd ${WRKBUILD}/tests && ${MAKE_PROGRAM} check-TESTS

.include <bsd.port.mk>

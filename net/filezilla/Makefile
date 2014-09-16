# $OpenBSD: Makefile,v 1.38 2014/09/16 19:18:07 landry Exp $

COMMENT=	fast FTP and SFTP GUI client with a lot of features
BROKEN-hppa=	serverpath.h:17:19: error: variable 'CServerPath final' has initializer but incomplete type

V=		3.8.1
PKGNAME=	filezilla-$V
DISTNAME=	FileZilla_$V_src
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=filezilla/}
HOMEPAGE=	http://www.filezilla-project.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pthread stdc++ tasn1 z hogweed nettle
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs xcb xcb-render xcb-shm
WANTLIB += idn gnutls>=13 dbus-1 wx_gtk2_aui wx_base_xml wx_gtk2_adv
WANTLIB += wx_gtk2_xrc wx_base_net wx_base wx_gtk2_core
WANTLIB += sqlite3 ffi p11-kit
WANTLIB += gmp harfbuzz
WANTLIB += ICE SDL SM Xxf86vm graphite2 jpeg mspack sndio tiff
WANTLIB += usbhid wx_gtk2_html

MODULES=	devel/gettext \
		gcc4

MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++

LIB_DEPENDS=	devel/libidn \
		devel/harfbuzz \
		security/gnutls \
		x11/dbus \
		x11/wxWidgets>=2.8.6

BUILD_DEPENDS=	devel/cppunit \
		devel/xdg-utils
RUN_DEPENDS=	devel/desktop-file-utils \
		devel/xdg-utils \
		x11/gtk+2,-guic

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

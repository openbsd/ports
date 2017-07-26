# $OpenBSD: Makefile,v 1.50 2017/07/26 22:45:27 sthen Exp $

COMMENT=	fast FTP and SFTP GUI client with a lot of features
BROKEN-hppa=	serverpath.h:17:19: error: variable 'CServerPath final' has initializer but incomplete type
BROKEN-alpha=	serverpath.h:17:19: error: variable 'CServerPath final' has initializer but incomplete type

V=		3.8.1
PKGNAME=	filezilla-$V
DISTNAME=	FileZilla_$V_src
EXTRACT_SUFX=	.tar.bz2
REVISION=	7

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=filezilla/}
HOMEPAGE=	http://www.filezilla-project.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SDL SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += dbus-1 expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz hogweed
WANTLIB += idn idn2 jpeg m mspack nettle p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sndio sqlite3 ${LIBCXX} tasn1 tiff unistring usbhid wx_base
WANTLIB += wx_base_net wx_base_xml wx_gtk2_adv wx_gtk2_aui wx_gtk2_core
WANTLIB += wx_gtk2_html wx_gtk2_xrc xcb xcb-render xcb-shm z

MODULES=	devel/gettext

COMPILER =	gcc

LIB_DEPENDS=	databases/sqlite3 \
		devel/harfbuzz \
		devel/libidn \
		security/gnutls \
		x11/dbus \
		x11/wxWidgets>=2.8.6

BUILD_DEPENDS=	devel/cppunit \
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

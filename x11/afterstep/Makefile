# $OpenBSD: Makefile,v 1.46 2013/06/04 18:41:57 naddy Exp $

COMMENT=	window manager, continuation of the Bowman NeXTSTEP clone

DISTNAME=	AfterStep-2.2.9
PKGNAME=	${DISTNAME:L}
REVISION=	5
CATEGORIES=     x11
MASTER_SITES=   http://distfiles.nl/ \
		ftp://ftp.afterstep.org/stable/

HOMEPAGE=	http://www.afterstep.org/

# MIT
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread pthread-stubs tiff xcb z dbus-1 rsvg-2
WANTLIB += GL Xxf86vm drm gthread-2.0 xcb-render xcb-shm

MODULES=	devel/gettext

BUILD_DEPENDS=	devel/libexecinfo
RUN_DEPENDS=	shells/bash \
		x11/asclock,classic,english \
		x11/rxvt-unicode
LIB_DEPENDS=	x11/dbus \
		x11/gnome/librsvg \
		x11/gtk+2

FAKE=		lib
USE_GROFF =	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-helpcommand="urxvt -e man" \
		--with-jpeg-includes=${LOCALBASE}/include \
		--with-jpeg-library=${LOCALBASE}/lib \
		--with-png-includes=${LOCALBASE}/include \
		--with-png-library=${LOCALBASE}/lib \
		--disable-send-postcard-to-developer \
		--enable-i18n \
		--enable-different-looknfeels
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS+="${CFLAGS} -fsigned-char"

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure ${WRKSRC}/tools/importasmenu

post-install:
	${INSTALL_DATA} ${FILESDIR}/monitor_bsd.xpm \
		${PREFIX}/share/afterstep/desktop/icons/common

.include <bsd.port.mk>

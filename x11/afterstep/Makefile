# $OpenBSD: Makefile,v 1.32 2009/12/06 15:09:22 jasper Exp $

COMMENT=	window manager, continuation of the Bowman NeXTSTEP clone

DISTNAME=	AfterStep-2.2.9
PKGNAME=	${DISTNAME:L}
CATEGORIES=     x11
MASTER_SITES=   ftp://ftp.afterstep.org/stable/

HOMEPAGE=	http://www.afterstep.org/

# MIT
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread pthread-stubs tiff xcb z

MODULES=	devel/gettext

RUN_DEPENDS=	::shells/bash \
		:asclock-*:x11/asclock,classic,english \
		::x11/aterm
LIB_DEPENDS=	dbus-1::x11/dbus \
		rsvg-2::x11/gnome/librsvg

FAKE=		lib
USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-helpcommand="aterm -e man" \
		--with-jpeg-includes=${LOCALBASE}/include \
		--with-jpeg-library=${LOCALBASE}/lib \
		--with-png-includes=${LOCALBASE}/include/libpng \
		--with-png-library=${LOCALBASE}/lib \
		--disable-send-postcard-to-developer \
		--enable-i18n \
		--enable-different-looknfeels
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS+="${CFLAGS} -fsigned-char"

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure ${WRKSRC}/tools/importasmenu

post-install:
	${INSTALL_DATA} ${FILESDIR}/monitor_bsd.xpm \
		${PREFIX}/share/afterstep/desktop/icons/common

.include <bsd.port.mk>

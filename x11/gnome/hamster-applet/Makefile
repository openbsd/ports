# $OpenBSD: Makefile,v 1.6 2009/02/11 15:33:51 jasper Exp $

COMMENT=		time tracker applet for GNOME

GNOME_PROJECT=		hamster-applet
GNOME_VERSION=		2.24.3
PKGNAME=		${DISTNAME}p0
CATEGORIES=		productivity

HOMEPAGE=		http://live.gnome.org/ProjectHamster

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

USE_X11=		Yes

# controlcenter2 is needed for custom keybindings
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::x11/gnome/controlcenter2 \
			::x11/gnome/py-gnome-desktop

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-schemas-install \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/hamster-applet
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON="${MODPY_BIN}"
pre-configure:
	${SUBST_CMD} ${WRKSRC}/hamster/hamster-applet.py

.include <bsd.port.mk>

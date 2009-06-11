# $OpenBSD: Makefile,v 1.12 2009/06/11 18:38:16 ajacoutot Exp $

COMMENT=		time tracker applet for GNOME

GNOME_PROJECT=		hamster-applet
GNOME_VERSION=		2.24.3
PKGNAME=		${DISTNAME}p5
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
			x11/gnome \
			devel/gconf2

USE_X11=		Yes
MODGCONF2_SCHEMAS_DIR=	hamster-applet
MODGCONF2_LIBDEP=	No

# controlcenter2 is needed for custom keybindings
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::x11/gnome/controlcenter2 \
			::x11/gnome/py-gnome-desktop

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
pre-configure:
	${SUBST_CMD} ${WRKSRC}/hamster/hamster-applet.py

.include <bsd.port.mk>

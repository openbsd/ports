# $OpenBSD: Makefile,v 1.24 2010/09/30 12:16:35 jasper Exp $

COMMENT=		time tracker applet for GNOME

GNOME_PROJECT=		hamster-applet
GNOME_VERSION=		2.32.0

CATEGORIES=		productivity

HOMEPAGE=		http://live.gnome.org/ProjectHamster

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs xcb z gthread-2.0 xcb-render
WANTLIB += xcb-render-util

MODULES=		devel/gconf2 \
			devel/gettext \
			devel/waf \
			lang/python \
			x11/gnome

USE_X11=		Yes
MODGCONF2_SCHEMAS_DIR=	hamster-applet
MODGCONF2_LIBDEP=	No

# controlcenter2 is needed for custom keybindings
BUILD_DEPENDS=		${RUN_DEPENDS} \
			:waf->=1.5.18:devel/waf
RUN_DEPENDS=		::x11/gnome/controlcenter2 \
			::x11/gnome/py-gnome-desktop \
			::devel/py-xdg

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/hamster-applet \
		${WRKSRC}/src/hamster-time-tracker \
		${WRKSRC}/src/hamster-cli \
		${WRKSRC}/src/hamster-service

# Thank you for switching to waf, now you can cleanup our mess!
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${SCHEMAS_INSTDIR}/
	@mv ${PREFIX}/etc/gconf/schemas/* ${PREFIX}/${SCHEMAS_INSTDIR}/
	@rm -fr ${PREFIX}/etc/gconf/schemas/

.include <bsd.port.mk>

# Need to override the defaults set by the gconf and gnome module
CONFIGURE_STYLE=
CONFIGURE_ARGS=

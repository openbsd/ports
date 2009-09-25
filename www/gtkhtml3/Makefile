# $OpenBSD: Makefile,v 1.29 2009/09/25 08:12:11 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		lightweight HTML rendering/printing/editing engine

GNOME_PROJECT=		gtkhtml
GNOME_VERSION=		3.28.0
API_VERSION=		3.14
PKGNAME=		gtkhtml3-${VERSION}

SHARED_LIBS +=	gtkhtml-3.14         3.0      # .20.0
SHARED_LIBS +=	gtkhtml-editor       0.0      # .0.0

CATEGORIES=    		www

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gailutil gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ xcb z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		::devel/iso-codes \
			:gnome-icon-theme-*:x11/gnome/icon-theme
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			enchant::textproc/enchant
RUN_DEPENDS=		::devel/iso-codes

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=        ${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=		API_VERSION

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.3 2011/07/12 05:17:52 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		lightweight HTML rendering/printing/editing engine

GNOME_PROJECT=		gtkhtml
GNOME_VERSION=		4.0.1

REVISION=		0

API_VERSION=		4.0
SUBST_VARS=		API_VERSION

REVISION=		0

PKGNAME=		gtkhtml4-${VERSION}

HOMEPAGE=		http://www.gnome.org/

SHARED_LIBS +=  gtkhtml-4.0               0.0 # 0.0
SHARED_LIBS +=  gtkhtml-editor-4.0        0.0 # 0.0

CATEGORIES=    		www

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject drm enchant expat fontconfig
WANTLIB += freetype gailutil-3 gconf-2 gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs stdc++ xcb xcb-render xcb-shm
WANTLIB += z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/gconf2 \
			textproc/enchant \
			x11/gtk+3

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/iso-codes \
			x11/gnome/icon-theme

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=        ${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.29 2010/10/13 18:40:23 jasper Exp $

CATEGORIES=	x11

COMMENT=	GUI for ogle
DISTNAME=	ogle_gui-0.9.2
REVISION=	9

HOMEPAGE=	http://www.dtek.chalmers.se/groups/dvd/
# Authors can be reached at dvd@dtek.chalmers.se
MASTER_SITES=	${HOMEPAGE}/dist/

CONFIGURE_STYLE=	gnu

# GPL
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr c expat gio-2.0 pcre pixman-1 pthread
WANTLIB += z pthread-stubs xcb dvdcontrol xml2 msgevents
WANTLIB += gthread-2.0 xcb-render GL X11-xcb Xxf86vm drm xcb-shm
WANTLIB += Xrender atk-1.0 fontconfig freetype glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 m pango-1.0 glade-2.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 cairo png gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gtk-x11-2.0

LIB_DEPENDS=	::x11/ogle \
		::textproc/libxml \

MODULES=	devel/gettext
USE_X11=	Yes
USE_LIBTOOL=	Yes

LIB_DEPENDS+=	::devel/libglade2 \
		::x11/gtk+2
CONFIGURE_ARGS+=--enable-gtk2
CONFIGURE_ENV+= CFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib" \
		LDFLAGS="-pthread"

.include <bsd.port.mk>

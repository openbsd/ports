# $OpenBSD: Makefile,v 1.25 2009/08/11 08:42:08 ajacoutot Exp $

CATEGORIES=	x11

COMMENT=	GUI for ogle
DISTNAME=	ogle_gui-0.9.2
PKGNAME=	${DISTNAME}p6
HOMEPAGE=	http://www.dtek.chalmers.se/groups/dvd/
# Authors can be reached at dvd@dtek.chalmers.se
MASTER_SITES=	${HOMEPAGE}dist/

CONFIGURE_STYLE=	gnu

# GPL
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr c expat gio-2.0 pcre pixman-1 pthread
WANTLIB += z pthread-stubs xcb

LIB_DEPENDS=	dvdcontrol.>=9,msgevents.>=6::x11/ogle \
		xml2::textproc/libxml \

USE_X11=	Yes
USE_LIBTOOL=	Yes

FLAVORS=gtk1
FLAVOR?=

.if ${FLAVOR:L} == "gtk1"
LIB_DEPENDS+= 	glade.>=5.0::devel/libglade \
		gtk.>=1.2::x11/gtk+
WANTLIB+=	Xi gdk glib gmodule xml
.else
LIB_DEPENDS+=	glade-2.0::devel/libglade2 \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
CONFIGURE_ARGS+=--enable-gtk2
WANTLIB+=	Xrender atk-1.0 fontconfig freetype glib-2.0 \
		gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 cairo glitz png
.endif

MODULES=	devel/gettext

CONFIGURE_ENV+= CFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib" \
		LDFLAGS="-pthread"

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.13 2005/11/14 16:05:10 wilfried Exp $

CATEGORIES=	x11

COMMENT=	"GUI for ogle"
DISTNAME=	ogle_gui-0.9.2
PKGNAME=	${DISTNAME}p0
HOMEPAGE=	http://www.dtek.chalmers.se/groups/dvd/
# Authors can be reached at dvd@dtek.chalmers.se
MASTER_SITES=	${HOMEPAGE}dist/

CONFIGURE_STYLE=	gnu

# GPL
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
WANTLIB=	X11 Xext pthread z m c

LIB_DEPENDS=	dvdcontrol.9,msgevents.6::x11/ogle \
		xml2::textproc/libxml \

FLAVORS=gtk1
FLAVOR?=

.if ${FLAVOR:L} == "gtk1"
LIB_DEPENDS+= 	glade.5.0::devel/libglade \
		gtk.1.2::x11/gtk+
WANTLIB+=	Xi gdk glib gmodule xml
.else
BUILD_DEPENDS+=	::devel/pkgconfig
LIB_DEPENDS+=	glade-2.0.0.0::devel/libglade2 \
		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
CONFIGURE_ARGS+=--enable-gtk2
WANTLIB+=	Xrender atk-1.0.0.0 cairo fontconfig freetype glib-2.0.0.0 \
		glitz gmodule-2.0.0.0 gobject-2.0.0.0 m pango-1.0.0.0 \
		pangocairo-1.0.0.0 pangoft2-1.0.0.0 png
.endif

MODULES=	devel/gettext

CONFIGURE_ENV+= CFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib" \
		LDFLAGS="-pthread"

.include <bsd.port.mk>

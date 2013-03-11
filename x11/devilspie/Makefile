# $OpenBSD: Makefile,v 1.22 2013/03/11 11:46:08 espie Exp $

COMMENT=	window manipulation tool

DISTNAME=	devilspie-0.22
REVISION=	4
CATEGORIES=	x11

HOMEPAGE=	http://www.burtonini.com/blog/computers/devilspie

MAINTAINER=	Olle Nilsson <olle@vexed.se>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += z pthread-stubs xcb wnck-1 GL xcb-render xcb-shm

MASTER_SITES=	http://www.burtonini.com/computing/

MODULES=	devel/gettext textproc/intltool

LIB_DEPENDS=	devel/libwnck

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/" \
		LDFLAGS="-L${LOCALBASE}/lib" 

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/devilspie
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/devilspie

.include <bsd.port.mk>

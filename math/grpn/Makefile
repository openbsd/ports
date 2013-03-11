# $OpenBSD: Makefile,v 1.26 2013/03/11 11:23:54 espie Exp $

COMMENT=	graphical reverse polish notation calculator

DISTNAME=	grpn-1.1.2
REVISION=	6
CATEGORIES=	math x11

HOMEPAGE=	http://lashwhip.com/grpn.html

MASTER_SITES=	http://lashwhip.com/grpn/ \
		ftp://lashwhip.com/pub/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gdk_pixbuf-2.0
WANTLIB += gdk-x11-2.0 gtk-x11-2.0
WANTLIB += GL gthread-2.0 pthread xcb-render xcb-shm

LIB_DEPENDS=	x11/gtk+2

MAKE_FLAGS=	CC="${CC}"
ALL_TARGET=
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/grpn ${PREFIX}/bin

.include <bsd.port.mk>

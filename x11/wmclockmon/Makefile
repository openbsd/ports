# $OpenBSD: Makefile,v 1.14 2015/04/21 18:13:10 sthen Exp $

COMMENT=		WindowMaker dock.app clock
BROKEN-sparc64 =	ICE in change_address_1, at emit-rtl.c:1784

DISTNAME=		wmclockmon-0.8.0
REVISION=		4
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://tnemeth.free.fr/projets/dockapps.html

MAINTAINER=		Niall O Higgins <niallo@openbsd.org>

MASTER_SITES=		http://tnemeth.free.fr/projets/programmes/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xpm Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread
WANTLIB += pthread-stubs xcb z

MODULES=		devel/gettext


LIB_DEPENDS=		x11/gtk+2

USE_GROFF =		Yes
NO_TEST=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>

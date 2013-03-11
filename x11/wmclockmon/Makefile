# $OpenBSD: Makefile,v 1.13 2013/03/11 11:46:16 espie Exp $

COMMENT=		WindowMaker dock.app clock
BROKEN-sparc64 =	ICE in change_address_1, at emit-rtl.c:1784

DISTNAME=		wmclockmon-0.8.0
REVISION=		3
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://tnemeth.free.fr/projets/dockapps.html

MAINTAINER=		Niall O Higgins <niallo@openbsd.org>

MASTER_SITES=		http://tnemeth.free.fr/projets/programmes/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xpm Xrandr Xrender atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread-stubs xcb z gdk_pixbuf-2.0 gdk-x11-2.0
WANTLIB += gtk-x11-2.0

LIB_DEPENDS=		x11/gtk+2

USE_GROFF =		Yes
NO_TEST=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>

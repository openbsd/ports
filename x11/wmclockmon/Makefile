# $OpenBSD: Makefile,v 1.5 2010/07/30 06:59:01 ajacoutot Exp $

COMMENT=		Window Maker dock.app clock

DISTNAME=		wmclockmon-0.8.0
REVISION=		0
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://tnemeth.free.fr/projets/dockapps.html

MAINTAINER=		Niall O Higgins <niallo@openbsd.org>

MASTER_SITES=		http://tnemeth.free.fr/projets/programmes/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xpm Xrandr Xrender atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread-stubs xcb z

LIB_DEPENDS=		gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>

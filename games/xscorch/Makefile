# $OpenBSD: Makefile,v 1.13 2013/03/11 11:07:42 espie Exp $

COMMENT=		Scorched Earth-clone

DISTNAME=		xscorch-0.2.1-pre2
REVISION=		3
CATEGORIES=		games

HOMEPAGE=		http://www.xscorch.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/releases/

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs readline sndio termcap xcb z gdk_pixbuf-2.0
WANTLIB += gdk-x11-2.0 gtk-x11-2.0 mikmod

MODULES=		devel/gettext

LIB_DEPENDS=		audio/libmikmod \
			x11/gtk+2

USE_LIBTOOL=		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-x \
			--without-gnome

.include <bsd.port.mk>

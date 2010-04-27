# $OpenBSD: Makefile,v 1.5 2010/04/27 20:50:21 jasper Exp $

COMMENT=		Scorched Earth-clone

DISTNAME=		xscorch-0.2.1-pre2
PKGNAME=		${DISTNAME}p0
CATEGORIES=		games

HOMEPAGE=		http://www.xscorch.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/releases/

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs readline sndio termcap xcb z

MODULES=		devel/gettext

LIB_DEPENDS=		mikmod::audio/libmikmod \
			gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-x \
			--without-gnome

.include <bsd.port.mk>

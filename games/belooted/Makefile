# $OpenBSD: Makefile,v 1.18 2012/12/21 12:50:14 sthen Exp $

COMMENT=	32-card trick-taking game

DISTNAME=	belooted-0.1.4.1
REVISION=	6

CATEGORIES=	games

HOMEPAGE=	http://gnomefiles.org/content/show.php/Belooted?content=131848

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://boby.joe.free.fr/dev/belooted/files/

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gdk_pixbuf-2.0 gdk-x11-2.0>=1000
WANTLIB += gtk-x11-2.0>=1000 GL xcb-render xcb-shm

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	x11/gtk+2
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gnome/librsvg


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

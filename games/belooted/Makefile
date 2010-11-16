# $OpenBSD: Makefile,v 1.15 2010/11/16 11:23:26 espie Exp $

COMMENT=	32-card trick-taking game

DISTNAME=	belooted-0.1.4.1
REVISION=	3

CATEGORIES=	games

HOMEPAGE=	http://gnomefiles.org/content/show.php/Belooted?content=131848

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://boby.joe.free.fr/dev/belooted/files/

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gdk_pixbuf-2.0 gdk-x11-2.0>=1000
WANTLIB += gtk-x11-2.0>=1000

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	x11/gtk+2
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gnome/librsvg


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

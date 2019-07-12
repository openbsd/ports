# $OpenBSD: Makefile,v 1.27 2019/07/12 20:46:14 sthen Exp $

COMMENT=	32-card trick-taking game

DISTNAME=	belooted-0.1.4.1
REVISION=	12

CATEGORIES=	games

HOMEPAGE=	http://gnomefiles.org/content/show.php/Belooted?content=131848

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

MASTER_SITES=	http://boby.joe.free.fr/dev/belooted/files/

MODULES=	textproc/intltool

LIB_DEPENDS=	x11/gtk+2
RUN_DEPENDS=	devel/desktop-file-utils

# make sure to get -lm for lld
MAKE_FLAGS +=	belooted_LDADD=-lm

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.22 2019/07/17 14:39:44 danj Exp $

COMMENT=		gtk+-2 theme switcher

DISTNAME=		gtk-chtheme-0.3.1
REVISION=		12
CATEGORIES=		x11 graphics

HOMEPAGE=		http://plasmasturm.org/programs/gtk-chtheme/

MASTER_SITES=		${HOMEPAGE}

EXTRACT_SUFX=		.tar.bz2

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread xcb z

LIB_DEPENDS=		devel/glib2 \
			devel/pango \
			x11/gtk+2

USE_GMAKE=		Yes
NO_TEST=		Yes

post-extract:
	@perl -pi -e 's,/usr,${PREFIX},; s,share/,,;' ${WRKSRC}/Metadata

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.17 2013/10/11 23:51:49 naddy Exp $

COMMENT=		gtk+-2 theme switcher

DISTNAME=		gtk-chtheme-0.3.1
REVISION=		8
CATEGORIES=		x11 graphics

HOMEPAGE=		http://plasmasturm.org/programs/gtk-chtheme/

MAINTAINER=		Vlad Glagolev <stealth@sourcemage.org>

MASTER_SITES=		${HOMEPAGE}

EXTRACT_SUFX=		.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype m pixman-1 png z pthread-stubs xcb gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 gtk-x11-2.0 gdk_pixbuf-2.0 gdk-x11-2.0

LIB_DEPENDS=		devel/glib2 \
			devel/pango \
			x11/gtk+2

MODULES=		devel/gettext

USE_GMAKE=		Yes
NO_TEST=		Yes

post-extract:
	@perl -pi -e 's,/usr,${PREFIX},; s,share/,,;' ${WRKSRC}/Metadata

.include <bsd.port.mk>

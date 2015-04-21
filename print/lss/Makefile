# $OpenBSD: Makefile,v 1.12 2015/04/21 18:24:23 sthen Exp $

COMMENT=		LaTeX symbols selector

DISTNAME=		lss-0.1.6
REVISION=		7
CATEGORIES=		print x11

HOMEPAGE=		http://clayo.org/lss/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread
WANTLIB += pthread-stubs xcb xml2 z

MASTER_SITES=		${HOMEPAGE}

MODULES=		devel/gettext

LIB_DEPENDS=		textproc/libxml \
			x11/gtk+2
RUN_DEPENDS=		devel/desktop-file-utils

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@perl -pi -e 's,/usr,${LOCALBASE},g' ${WRKSRC}/po/Makefile.in

.include <bsd.port.mk>

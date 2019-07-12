# $OpenBSD: Makefile,v 1.20 2019/07/12 20:48:56 sthen Exp $

COMMENT=		LaTeX symbols selector

DISTNAME=		lss-0.1.6
REVISION=		11
CATEGORIES=		print x11

HOMEPAGE=		http://clayo.org/lss/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 iconv intl lzma m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread
WANTLIB += xcb xml2 z

MASTER_SITES=		${HOMEPAGE}

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		textproc/libxml \
			x11/gtk+2
RUN_DEPENDS=		devel/desktop-file-utils

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@sed -i 's,/usr,${LOCALBASE},g' ${WRKSRC}/po/Makefile.in

.include <bsd.port.mk>

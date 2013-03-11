# $OpenBSD: Makefile,v 1.11 2013/03/11 11:37:54 espie Exp $

COMMENT=		LaTeX symbols selector

DISTNAME=		lss-0.1.6
REVISION=		6
CATEGORIES=		print x11

HOMEPAGE=		http://clayo.org/lss/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

MODULES=		devel/gettext

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gdk_pixbuf-2.0
WANTLIB += xml2 gdk-x11-2.0 gtk-x11-2.0

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

# $OpenBSD: Makefile,v 1.43 2006/10/19 15:40:07 pvalchev Exp $

COMMENT=	"Gtk-based graphic file viewer"

DISTNAME=	gqview-2.0.2
PKGNAME=	${DISTNAME}
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gqview/}

HOMEPAGE=	http://gqview.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 atk-1.0 c fontconfig cairo \
		freetype glib-2.0 gmodule-2.0 gobject-2.0 m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0

MODULES=	devel/gettext

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# gqview only installs these files conditionally if it finds gnome-config.
# here we will install the files manually, this eases integration with GNOME.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gnome/apps/Graphics
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/gqview.desktop \
		${PREFIX}/share/gnome/apps/Graphics
	${INSTALL_DATA} ${WRKSRC}/gqview.png ${PREFIX}/share/pixmaps

.include <bsd.port.mk>

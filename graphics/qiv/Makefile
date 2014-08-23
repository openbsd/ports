# $OpenBSD: Makefile,v 1.27 2014/08/23 14:33:07 kirby Exp $

COMMENT=		very small and pretty fast gdk/Imlib image viewer

DISTNAME=		qiv-2.3.1
CATEGORIES=		graphics

EXTRACT_SUFX=		.tgz

HOMEPAGE=		http://spiegl.de/qiv/

MASTER_SITES=		${HOMEPAGE}/download/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += Imlib2 X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender c cairo exif fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += jpeg lcms2 m magic pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread tiff z

MODULES=		devel/gettext

LIB_DEPENDS=		devel/libmagic \
			graphics/imlib2 \
			graphics/lcms2 \
			graphics/libexif \
			x11/gtk+2

USE_GMAKE=		Yes
NO_TEST=		Yes

post-configure:
	${SUBST_CMD} ${WRKSRC}/qiv.1
	perl -pi -e 's,bash,sh,' ${WRKSRC}/contrib/qiv-command.example
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qiv/
	${INSTALL_DATA} ${WRKSRC}/contrib/qiv-command.example \
		${PREFIX}/share/examples/qiv/

.include <bsd.port.mk>

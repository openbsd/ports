# $OpenBSD: Makefile,v 1.30 2019/07/12 20:47:09 sthen Exp $

COMMENT=		very small and pretty fast gdk/Imlib image viewer

DISTNAME=		qiv-2.3.1
CATEGORIES=		graphics
REVISION=		0

EXTRACT_SUFX=		.tgz

HOMEPAGE=		http://spiegl.de/qiv/

MASTER_SITES=		${HOMEPAGE}/download/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  Imlib2 X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender c cairo exif fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 iconv intl jpeg
WANTLIB += lcms2 m magic pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread
WANTLIB += tiff z

LIB_DEPENDS=		devel/libmagic \
			graphics/imlib2 \
			graphics/lcms2 \
			graphics/libexif \
			x11/gtk+2

USE_GMAKE=		Yes
NO_TEST=		Yes

post-configure:
	${SUBST_CMD} ${WRKSRC}/qiv.1
	sed -i 's,bash,sh,' ${WRKSRC}/contrib/qiv-command.example

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qiv/
	${INSTALL_DATA} ${WRKSRC}/contrib/qiv-command.example \
		${PREFIX}/share/examples/qiv/

.include <bsd.port.mk>

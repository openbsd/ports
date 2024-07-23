COMMENT=	CAD drawing program for X11

# keep graphics/xfig and print/transfig in sync
DISTNAME=	xfig-3.2.9
CATEGORIES=	graphics x11

HOMEPAGE=	https://mcj.sourceforge.net/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xaw3d Xft Xpm Xt c fontconfig gs iconv
WANTLIB += jpeg m png tiff

SITES=		${SITE_SOURCEFORGE:=mcj/}
EXTRACT_SUFX=	.tar.xz

BUILD_DEPENDS=	print/transfig \
		textproc/gsed
LIB_DEPENDS=	graphics/jpeg \
		graphics/png \
		x11/Xaw3d>=1.6
RUN_DEPENDS=	print/transfig \
		textproc/xpdf \
		devel/desktop-file-utils

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include -I${X11BASE}/include/freetype2" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS=	--with-applicationsdir=${PREFIX}/share/applications \
		--with-icondir=${PREFIX}/share/pixmaps \
		--docdir=${PREFIX}/share/doc/xfig \
		--with-appdefaultdir=${PREFIX}/lib/X11/app-defaults \
		--datarootdir=${PREFIX}/lib/X11

USE_GROFF=	Yes

pre-build:
	ln -fs ${LOCALBASE}/bin/gsed ${WRKDIR}/bin/sed

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.3 2004/11/30 01:06:39 espie Exp $

COMMENT=	"Python charting and plotting API"

DISTNAME=	matplotlib-0.64
PKGNAME=	py-${DISTNAME}p0
CATEGORIES=	graphics devel

HOMEPAGE=	http://matplotlib.sourceforge.net/

MAINTAINER=	Damien Miller <djm@openbsd.org>

MODULES=	lang/python

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xft Xinerama Xrender atk-1.0.0.0 fontconfig \
			freetype gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
			glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
			gtk-x11-2.0.0.0 iconv intl m pango-1.0.0.0 \
			pangox-1.0.0.0 pangoxft-1.0.0.0 stdc++ z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=matplotlib/}

RUN_DEPENDS=	::math/py-Numeric \
		::x11/py-gtk2 \
		::devel/py-tz \
		::devel/py-dateutil
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	tiff.35::graphics/tiff \
		png.3::graphics/png \
		jpeg.62::graphics/jpeg

MAKE_ENV+=      EXTRA_INCLUDES="${WRKSRC} ${LOCALBASE}/include/libpng"

# This file interferes with update-patches
post-extract:
	@rm -f ${WRKSRC}/lib/matplotlib/legend.py.orig

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-matplotlib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-matplotlib/data
	${INSTALL_DATA} ${WRKSRC}/examples/*.* ${WRKSRC}/examples/README \
	    ${PREFIX}/share/examples/py-matplotlib
	${INSTALL_DATA} ${WRKSRC}/examples/data/* \
	    ${PREFIX}/share/examples/py-matplotlib/data

NO_REGRESS=	Yes

.include <bsd.port.mk>

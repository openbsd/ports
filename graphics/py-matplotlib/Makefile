# $OpenBSD: Makefile,v 1.2 2004/11/11 12:41:33 alek Exp $

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

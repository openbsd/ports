# $OpenBSD: Makefile,v 1.15 2006/06/13 13:25:31 bernd Exp $

SHARED_ONLY=	Yes

COMMENT=	"Python charting and plotting API"

DISTNAME=	matplotlib-0.83.2
PKGNAME=	py-${DISTNAME}p3
CATEGORIES=	graphics devel

HOMEPAGE=	http://matplotlib.sourceforge.net/

MAINTAINER=	Damien Miller <djm@openbsd.org>

MODULES=	lang/python \
		devel/gettext

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 fontconfig freetype m z stdc++ \
			atk-1.0.0.0 gdk-x11-2.0.0.0 cairo \
			gdk_pixbuf-2.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 \
			gobject-2.0.0.0 gtk-x11-2.0.0.0 \
			pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=matplotlib/}

RUN_DEPENDS=	::math/py-Numeric \
		::x11/py-gtk2 \
		::devel/py-tz \
		::devel/py-dateutil
BUILD_DEPENDS=	${RUN_DEPENDS} \
		::devel/pkgconfig
LIB_DEPENDS=	png.3::graphics/png

MAKE_ENV+=      EXTRA_INCLUDES="${WRKSRC} ${LOCALBASE}/include/libpng"

# The matplotlib distributors seem to have an uncanny knack for breaking 
# update-patches by shipping .orig and .rej files, over several releases...
post-extract:
	@find ${WRKSRC} -type f -name \*.orig -o -name \*.rej | xargs -r rm -f

post-install:
	# examples
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-matplotlib
	${INSTALL_DATA} ${WRKSRC}/examples/README ${WRKSRC}/examples/*.glade \
	    ${PREFIX}/share/examples/py-matplotlib
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py \
	    ${PREFIX}/share/examples/py-matplotlib
	# examples/data
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-matplotlib/data
	${INSTALL_DATA} ${WRKSRC}/examples/data/* \
	    ${PREFIX}/share/examples/py-matplotlib/data
	# examples/widgets
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-matplotlib/widgets
	${INSTALL_DATA} ${WRKSRC}/examples/widgets/README \
	    ${PREFIX}/share/examples/py-matplotlib/widgets
	${INSTALL_SCRIPT} ${WRKSRC}/examples/widgets/*.py \
	    ${PREFIX}/share/examples/py-matplotlib/widgets

VMEM_WARNING=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>

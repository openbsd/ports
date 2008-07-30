# $OpenBSD: Makefile,v 1.26 2008/07/30 17:51:21 martynas Exp $

SHARED_ONLY=	Yes

COMMENT=	Python charting and plotting API

DISTNAME=	matplotlib-0.90.1
PKGNAME=	py-${DISTNAME}p2
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

WANTLIB=	X11 Xau Xcomposite Xcursor Xdmcp Xext Xfixes Xi Xinerama \
		Xrandr Xrender Xdamage expat fontconfig freetype m z stdc++ \
		atk-1.0 gdk-x11-2.0 cairo glitz \
		gdk_pixbuf-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gtk-x11-2.0 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=matplotlib/}

RUN_DEPENDS=	::math/py-numpy \
		::x11/py-gtk2 \
		::devel/py-tz \
		::devel/py-dateutil
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	png.>=3::graphics/png

USE_X11=	Yes

MAKE_ENV+=	EXTRA_INCLUDES="${WRKSRC} ${LOCALBASE}/include/libpng" \
		LDSHARED="${CC} -shared -fPIC"

# The matplotlib distributors seem to have an uncanny knack for breaking 
# update-patches by shipping .orig and .rej files, over several releases...
post-extract:
	@find ${WRKSRC} -type f -name \*.orig -o -name \*.rej -print0 | \
	    xargs -r0 rm -f

post-install:
	# Make examples use MODPY_VER
	(set -ex ; for fn in `find ${WRKSRC}/examples -name \*.py` ; do \
	    sed "1s/python\$$/python${MODPY_VERSION}/" < $${fn} > $${fn}__ ; \
	    mv $${fn}__ $${fn} ; \
	done)
	# examples
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-matplotlib
	${INSTALL_DATA} ${WRKSRC}/examples/README \
	    ${PREFIX}/share/examples/py-matplotlib
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py \
	    ${PREFIX}/share/examples/py-matplotlib
	# examples/data
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-matplotlib/data
	${INSTALL_DATA} ${WRKSRC}/examples/data/* \
	    ${PREFIX}/share/examples/py-matplotlib/data
	# examples/data
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-matplotlib/units
	${INSTALL_SCRIPT} ${WRKSRC}/examples/units/*.py \
	    ${PREFIX}/share/examples/py-matplotlib/units
	# examples/widgets
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-matplotlib/widgets
	${INSTALL_DATA} ${WRKSRC}/examples/widgets/README \
	    ${PREFIX}/share/examples/py-matplotlib/widgets
	${INSTALL_SCRIPT} ${WRKSRC}/examples/widgets/*.py \
	    ${PREFIX}/share/examples/py-matplotlib/widgets

VMEM_WARNING=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.29 2009/04/11 08:16:58 eric Exp $

VMEM_WARNING=	Yes

COMMENT=	Python charting and plotting API

DISTNAME=	matplotlib-0.98.5.2
PKGNAME=	py-${DISTNAME}p1
CATEGORIES=	graphics devel math

HOMEPAGE=	http://matplotlib.sourceforge.net/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdmcp Xext Xfixes Xi Xinerama \
		Xrandr Xrender Xdamage expat fontconfig freetype m z stdc++ \
		atk-1.0 gdk-x11-2.0 cairo glitz \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gtk-x11-2.0 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 \
		tcl84 tk84

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=matplotlib/}

MODULES=	lang/python \
		devel/gettext

RUN_DEPENDS=	::math/py-numpy \
		::x11/py-gtk2 \
		::devel/py-tz \
		::devel/py-dateutil \
		${MODPY_TKINTER_DEPENDS}
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	png.>=3::graphics/png

MAKE_ENV+=	EXTRA_INCLUDES="${WRKSRC} ${LOCALBASE}/include/libpng" \
		LDSHARED="${CC} -shared -fPIC"

USE_X11=	Yes

NO_REGRESS=	Yes

post-install:
	# Make examples use MODPY_VER
	(set -ex ; for fn in `find ${WRKSRC}/examples -name \*.py` ; do \
	    sed "1s/python\$$/python${MODPY_VERSION}/" < $${fn} > $${fn}__ ; \
	    mv $${fn}__ $${fn} ; \
	done)
	# examples
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-matplotlib
	(set -e ; cd ${WRKSRC}/examples ; tar cf - . | \
	    (set -e ; cd ${PREFIX}/share/examples/py-matplotlib ; tar xf - ))

.include <bsd.port.mk>

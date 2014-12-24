# $OpenBSD: Makefile,v 1.52 2014/12/24 14:21:15 sthen Exp $

COMMENT=	Python charting and plotting API

MODPY_EGG_VERSION =	1.4.2
REVISION =		0
DISTNAME =		matplotlib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		graphics devel math

HOMEPAGE=	http://matplotlib.sourceforge.net/

MAINTAINER =	Daniel Dickman <daniel@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs ${MODPY_WANTLIB} stdc++ tcl85 tk85
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=matplotlib/}

MODULES=	lang/python \
		devel/gettext \
		x11/tk

MODPY_SETUPTOOLS = Yes

RUN_DEPENDS=	devel/py-tz \
		devel/py-dateutil \
		devel/py-parsing \
		devel/py-six \
		math/py-numpy \
		x11/py-gtk2 \
		graphics/py-Pillow \
		${MODPY_TKINTER_DEPENDS}
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	graphics/png
TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-nose

MAKE_ENV+=	EXTRA_INCLUDES="${WRKSRC} ${MODTCL_INCDIR} ${MODTK_INCDIR}" \
		LDSHARED="${CC} -shared -fPIC"

pre-configure:
	@find ${WRKSRC}/examples -name \*.py | xargs ${MODPY_BIN_ADJ}
	${SUBST_CMD} ${WRKSRC}/setupext.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-matplotlib
	cd ${WRKSRC}/examples && pax -rw * \
	    ${PREFIX}/share/examples/py-matplotlib

# http://matplotlib.org/devel/testing.html
do-test: fake
	${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
		'import matplotlib ; matplotlib.test()'

.include <bsd.port.mk>

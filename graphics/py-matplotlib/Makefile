# $OpenBSD: Makefile,v 1.54 2015/05/04 22:03:20 daniel Exp $

COMMENT=	Python charting and plotting API

MODPY_EGG_VERSION =	1.4.2
REVISION =		2
DISTNAME =		matplotlib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		graphics devel math

HOMEPAGE=	http://matplotlib.sourceforge.net/

MAINTAINER =	Daniel Dickman <daniel@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender ffi fontconfig freetype 
WANTLIB += m pixman-1 png pthread pthread-stubs ${MODPY_WANTLIB}
WANTLIB += stdc++ tcl85 tk85 xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=matplotlib/}

MODULES=	lang/python \
		devel/gettext \
		x11/tk

FLAVORS=	python3
FLAVOR?=

MODPY_SETUPTOOLS = Yes

RUN_DEPENDS=	devel/py-tz${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-parsing${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR} \
		graphics/py-Pillow${MODPY_FLAVOR} \
		${MODPY_TKINTER_DEPENDS}

.if ! ${FLAVOR:Mpython3}
WANTLIB += atk-1.0 cairo gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
LIB_DEPENDS += x11/gtk+2
RUN_DEPENDS += x11/py-gtk2
.endif

BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS+=	graphics/png
TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-nose${MODPY_FLAVOR}

MAKE_ENV+=	EXTRA_INCLUDES="${WRKSRC} ${MODTCL_INCDIR} ${MODTK_INCDIR}" \
		LDSHARED="${CC} -shared -fPIC"

EXAMPLESDIR=	${PREFIX}/share/examples/${MODPY_PY_PREFIX}matplotlib

pre-configure:
	@find ${WRKSRC}/examples -name \*.py | xargs ${MODPY_BIN_ADJ}
	${SUBST_CMD} ${WRKSRC}/setupext.py

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/examples && pax -rw * ${EXAMPLESDIR}

# http://matplotlib.org/devel/testing.html
do-test: fake
	${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
		'import matplotlib ; matplotlib.test()'

.include <bsd.port.mk>

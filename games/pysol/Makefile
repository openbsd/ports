COMMENT =		solitaire card games collection

MODPY_EGG_VERSION =	2.21.0
DISTNAME =		PySolFC-${MODPY_EGG_VERSION}
PKGNAME =		pysol-${MODPY_EGG_VERSION}

CATEGORIES =		games

HOMEPAGE =		http://pysolfc.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=pysolfc/}
EXTRACT_SUFX =		.tar.xz
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			PySolFC-Cardsets-2.2.tar.bz2

MODULES =		lang/python \
			x11/gnome

MODPY_PYBUILD =		setuptools

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

RUN_DEPENDS =		${MODPY_TKINTER_DEPENDS} \
			devel/py-attrs${MODPY_FLAVOR} \
			devel/py-configobj${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/pygame${MODPY_FLAVOR} \
			games/pysol-cards${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR}

# needs pycotap (not ported), p5-Moo, py-gtk - and gmake
NO_TEST =		Yes
#USE_GMAKE =		Yes

#pre-test:
#	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

post-install:
	mv ${PREFIX}/bin/pysol{.py,}
	mv ${WRKDIR}/PySolFC-Cardsets-2.2/* ${PREFIX}/share/PySolFC/

.include <bsd.port.mk>

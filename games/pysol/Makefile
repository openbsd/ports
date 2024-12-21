COMMENT =		solitaire card games collection

MODPY_DISTV =	3.1.0
DISTNAME =		PySolFC-${MODPY_DISTV}
PKGNAME =		pysol-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		https://pysolfc.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=pysolfc/}
EXTRACT_SUFX =		.tar.xz
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			PySolFC-Cardsets-3.0.tar.bz2

MODULES =		lang/python \
			x11/gnome

MODPY_PYBUILD =		setuptools

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

RUN_DEPENDS =		${MODPY_TKINTER_DEPENDS} \
			devel/py-attrs \
			devel/py-configobj \
			devel/py-six \
			devel/pygame \
			games/pysol-cards \
			graphics/py-Pillow

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

post-install:
	mv ${PREFIX}/bin/pysol{.py,}
	mv ${WRKDIR}/PySolFC-Cardsets-3.0/* ${PREFIX}/share/PySolFC/

.include <bsd.port.mk>

COMMENT =		solitaire card games collection

MODPY_DISTV =		3.4.1
V_CARDSETS =		3.1
DISTNAME =		PySolFC-${MODPY_DISTV}
PKGNAME =		pysol-${MODPY_DISTV}

CATEGORIES =		games

HOMEPAGE =		https://pysolfc.sourceforge.net/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# GPLv3+
# Many cardsets are GPLv2; see individual COPYRIGHT files
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=pysolfc/}
EXTRACT_SUFX =		.tar.xz
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			PySolFC-Cardsets-${V_CARDSETS}.tar.bz2

MODULES =		lang/python \
			x11/gnome

MODPY_PYBUILD =		setuptools

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

RUN_DEPENDS =		${MODPY_TKINTER_DEPENDS} \
			devel/py-attrs \
			devel/py-configobj \
			devel/pygame \
			games/pysol-cards \
			graphics/py-Pillow

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

post-install:
	mv ${PREFIX}/bin/pysol{.py,}
	mv ${WRKDIR}/PySolFC-Cardsets-${V_CARDSETS}/* ${PREFIX}/share/PySolFC/

.include <bsd.port.mk>

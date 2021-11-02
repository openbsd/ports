# $OpenBSD: Makefile,v 1.14 2021/11/02 00:01:14 sthen Exp $

COMMENT =		solitaire card games collection
MODPY_EGG_VERSION =	2.6.4
DISTNAME =		PySolFC-${MODPY_EGG_VERSION}
PKGNAME =		pysol-${MODPY_EGG_VERSION}
CATEGORIES =		games
REVISION =		3

HOMEPAGE =		http://pysolfc.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pysolfc/}
EXTRACT_SUFX =		.tar.xz
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			PySolFC-Cardsets-2.0.tar.bz2

MODULES =		lang/python \
			x11/gnome
MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

RUN_DEPENDS =		${MODPY_TKINTER_DEPENDS} \
			devel/py-six${MODPY_FLAVOR} \
			devel/pygame${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR}

# needs pycotap (not ported), p5-Moo, py-gtk - and gmake
NO_TEST =		Yes
#USE_GMAKE =		Yes

#pre-test:
#	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

post-install:
	mv ${PREFIX}/bin/pysol{.py,}
	mv ${WRKDIR}/PySolFC-Cardsets-2.0/* ${PREFIX}/share/PySolFC/

.include <bsd.port.mk>

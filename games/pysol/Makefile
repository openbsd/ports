# $OpenBSD: Makefile,v 1.9 2019/09/07 07:23:56 landry Exp $

COMMENT =		solitaire card games collection
MODPY_EGG_VERSION =	2.6.4
DISTNAME =		PySolFC-${MODPY_EGG_VERSION}
PKGNAME =		pysol-${MODPY_EGG_VERSION}
CATEGORIES =		games

HOMEPAGE =		http://pysolfc.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pysolfc/}
EXTRACT_SUFX =		.tar.xz
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			PySolFC-Cardsets-2.0.tar.bz2

MODULES =		lang/python \
			x11/gnome
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

RUN_DEPENDS =		${MODPY_TKINTER_DEPENDS} \
			devel/pygame,python3 \
			graphics/py-Pillow,python3

# needs pycotap (not ported), p5-Moo, py-gtk - and gmake
NO_TEST =		Yes
#USE_GMAKE =		Yes

#pre-test:
#	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

post-install:
	mv ${PREFIX}/bin/pysol{.py,}
	mv ${WRKDIR}/PySolFC-Cardsets-2.0/* ${PREFIX}/share/PySolFC/

.include <bsd.port.mk>

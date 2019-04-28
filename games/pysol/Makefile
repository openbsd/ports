# $OpenBSD: Makefile,v 1.7 2019/04/28 20:51:40 sthen Exp $

COMMENT =		solitaire card games collection
MODPY_EGG_VERSION =	2.4.0
DISTNAME =		PySolFC-${MODPY_EGG_VERSION}
PKGNAME =		pysol-${MODPY_EGG_VERSION}
CATEGORIES =		games
REVISION =		1

HOMEPAGE =		http://pysolfc.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

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

NO_TEST =		Yes

post-install:
	mv ${PREFIX}/bin/pysol{.py,}
	mv ${WRKDIR}/PySolFC-Cardsets-2.0/* ${PREFIX}/share/PySolFC/

.include <bsd.port.mk>

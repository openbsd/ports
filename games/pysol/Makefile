# $OpenBSD: Makefile,v 1.2 2016/01/11 11:04:21 czarkoff Exp $
COMMENT =		solitaire card games collection
MODPY_EGG_VERSION =	2.0
REVISION =		0
DISTNAME =		PySolFC-${MODPY_EGG_VERSION}
PKGNAME =		pysol-${MODPY_EGG_VERSION}
CATEGORIES =		games

HOMEPAGE =		http://pysolfc.sourceforge.net/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pysolfc/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python \
			x11/gnome
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}
MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

RUN_DEPENDS =		${MODPY_TKINTER_DEPENDS} \
			devel/pygame \
			graphics/py-Pillow

NO_TEST =		Yes

post-install:
	mv ${PREFIX}/bin/pysol{.py,}
	${MODPY_BIN_ADJ} ${PREFIX}/share/PySolFC/themes/clearlooks/create_imgs.py

.include <bsd.port.mk>

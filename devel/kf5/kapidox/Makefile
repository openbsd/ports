# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:57 zhuk Exp $

COMMENT =	doxygen wrapper for KDE
DISTNAME =	kapidox-${VERSION}
FULLPKGNAME =	${PKGNAME}${FLAVOR_EXT}

WANTLIB- =

MODULES =	lang/python

# used for updating port only
FLAVORS =	python3

RUN_DEPENDS =	x11/qt5,-html

SUBST_VARS =	DISTNAME

NO_TEST =	Yes

.include <bsd.port.mk>

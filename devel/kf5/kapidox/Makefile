# $OpenBSD: Makefile,v 1.3 2017/07/29 11:36:14 zhuk Exp $

COMMENT =	doxygen wrapper for KDE
DISTNAME =	kapidox-${VERSION}
FULLPKGNAME =	${PKGNAME}${FLAVOR_EXT}
REVISION =	0

WANTLIB- =

MODULES =	lang/python

# used for updating port only
FLAVORS =	python3

RUN_DEPENDS =	x11/qt5/docs,-html

SUBST_VARS =	DISTNAME

# TODO tests/tests  bash script
NO_TEST =	Yes

.include <bsd.port.mk>

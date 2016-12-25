# $OpenBSD: Makefile,v 1.2 2016/12/25 14:54:48 zhuk Exp $

COMMENT =	doxygen wrapper for KDE
DISTNAME =	kapidox-${VERSION}
FULLPKGNAME =	${PKGNAME}${FLAVOR_EXT}

WANTLIB- =

MODULES =	lang/python

# used for updating port only
FLAVORS =	python3

RUN_DEPENDS =	meta/qt5,-html

SUBST_VARS =	DISTNAME

# TODO tests/tests  bash script
NO_TEST =	Yes

.include <bsd.port.mk>

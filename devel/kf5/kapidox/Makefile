# $OpenBSD: Makefile,v 1.6 2019/03/30 09:13:48 rsadowski Exp $

COMMENT =	doxygen wrapper for KDE
DISTNAME =	kapidox-${VERSION}
FULLPKGNAME =	${PKGNAME}${FLAVOR_EXT}

WANTLIB- =

MODULES +=	lang/python

# used for updating port only
FLAVORS =	python3

RUN_DEPENDS =	x11/qt5/docs,-html

SUBST_VARS =	DISTNAME

# TODO tests/tests bash script
NO_TEST =	Yes

.include <bsd.port.mk>

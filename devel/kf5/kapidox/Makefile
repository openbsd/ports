# $OpenBSD: Makefile,v 1.8 2020/03/23 18:01:04 rsadowski Exp $

COMMENT =	doxygen wrapper for KDE
DISTNAME =	kapidox-${VERSION}
FULLPKGNAME =	${PKGNAME}${FLAVOR_EXT}

WANTLIB- =

MODULES +=	lang/python

# used for updating port only
FLAVORS =	python3

SUBST_VARS =	DISTNAME

# TODO tests/tests bash script
NO_TEST =	Yes

.include <bsd.port.mk>

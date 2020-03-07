# $OpenBSD: Makefile,v 1.7 2020/03/07 13:07:53 rsadowski Exp $

COMMENT =	doxygen wrapper for KDE
DISTNAME =	kapidox-${VERSION}
FULLPKGNAME =	${PKGNAME}${FLAVOR_EXT}
REVISION =	0

WANTLIB- =

MODULES +=	lang/python

# used for updating port only
FLAVORS =	python3

SUBST_VARS =	DISTNAME

# TODO tests/tests bash script
NO_TEST =	Yes

.include <bsd.port.mk>

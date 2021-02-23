# $OpenBSD: Makefile,v 1.14 2021/02/23 19:39:15 sthen Exp $

COMMENT =	doxygen wrapper for KDE
DISTNAME =	kapidox-${VERSION}
FULLPKGNAME =	${PKGNAME}${FLAVOR_EXT}

WANTLIB- =

MODULES +=	lang/python

MODPY_SETUPTOOLS =	Yes

CONFIGURE_ARGS +=	-DPYTHON_EXECUTABLE=${MODPY_BIN}

SUBST_VARS =	DISTNAME

# TODO tests/tests bash script
NO_TEST =	Yes

.include <bsd.port.mk>

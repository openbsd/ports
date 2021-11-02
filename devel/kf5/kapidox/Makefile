# $OpenBSD: Makefile,v 1.15 2021/11/02 00:00:24 sthen Exp $

COMMENT =	doxygen wrapper for KDE
DISTNAME =	kapidox-${VERSION}
FULLPKGNAME =	${PKGNAME}${FLAVOR_EXT}
REVISION =	0

WANTLIB- =

MODULES +=	lang/python

MODPY_SETUPTOOLS =	Yes

CONFIGURE_ARGS +=	-DPYTHON_EXECUTABLE=${MODPY_BIN}

SUBST_VARS =	DISTNAME

# TODO tests/tests bash script
NO_TEST =	Yes

.include <bsd.port.mk>

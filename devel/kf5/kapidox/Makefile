# $OpenBSD: Makefile,v 1.10 2020/07/03 21:12:39 sthen Exp $

COMMENT =	doxygen wrapper for KDE
DISTNAME =	kapidox-${VERSION}
FULLPKGNAME =	${PKGNAME}${FLAVOR_EXT}
REVISION =	1

WANTLIB- =

MODULES +=	lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

CONFIGURE_ARGS +=	-DPYTHON_EXECUTABLE=${MODPY_BIN}

SUBST_VARS =	DISTNAME

# TODO tests/tests bash script
NO_TEST =	Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.11 2020/09/07 14:48:44 rsadowski Exp $

COMMENT =	doxygen wrapper for KDE
DISTNAME =	kapidox-${VERSION}
FULLPKGNAME =	${PKGNAME}${FLAVOR_EXT}

WANTLIB- =

MODULES +=	lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

CONFIGURE_ARGS +=	-DPYTHON_EXECUTABLE=${MODPY_BIN}

SUBST_VARS =	DISTNAME

# TODO tests/tests bash script
NO_TEST =	Yes

.include <bsd.port.mk>

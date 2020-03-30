# $OpenBSD: Makefile,v 1.9 2020/03/30 16:34:36 rsadowski Exp $

COMMENT =	doxygen wrapper for KDE
DISTNAME =	kapidox-${VERSION}
FULLPKGNAME =	${PKGNAME}${FLAVOR_EXT}
REVISION =	0

WANTLIB- =

MODULES +=	lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

CONFIGURE_ARGS +=	-DPYTHON_EXECUTABLE=${MODPY_BIN}

SUBST_VARS =	DISTNAME

# TODO tests/tests bash script
NO_TEST =	Yes

.include <bsd.port.mk>

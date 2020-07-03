# $OpenBSD: Makefile,v 1.5 2020/07/03 21:13:03 sthen Exp $

COMMENT =		command line gopher client

MODPY_EGG_VERSION =	0.0.11
DISTNAME =		VF-1-${MODPY_EGG_VERSION}
PKGNAME =		vf1-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		https://github.com/solderpunk/VF-1
MAINTAINER =		Paco Esteban <paco@onna.be>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vf1/
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/README.md ${PREFIX}/share/doc/vf1/

.include <bsd.port.mk>

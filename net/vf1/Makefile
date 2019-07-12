# $OpenBSD: Makefile,v 1.3 2019/07/12 20:48:51 sthen Exp $

COMMENT =		command line gopher client

MODPY_EGG_VERSION =	0.0.10
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

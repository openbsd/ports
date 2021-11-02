# $OpenBSD: Makefile,v 1.7 2021/11/02 00:01:53 sthen Exp $

COMMENT =		command line gopher client

MODPY_EGG_VERSION =	0.0.11
DISTNAME =		VF-1-${MODPY_EGG_VERSION}
PKGNAME =		vf1-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		net

HOMEPAGE =		https://github.com/solderpunk/VF-1
MAINTAINER =		Paco Esteban <paco@onna.be>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vf1/
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/README.md ${PREFIX}/share/doc/vf1/

.include <bsd.port.mk>

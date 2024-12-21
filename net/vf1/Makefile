COMMENT =		command line gopher client

MODPY_DISTV =	0.0.11
DISTNAME =		VF-1-${MODPY_DISTV}
PKGNAME =		vf1-${MODPY_DISTV}
REVISION =		5

CATEGORIES =		net

HOMEPAGE =		https://github.com/solderpunk/VF-1
MAINTAINER =		Paco Esteban <paco@onna.be>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vf1/
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/README.md ${PREFIX}/share/doc/vf1/

.include <bsd.port.mk>

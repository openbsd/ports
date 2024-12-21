COMMENT =		run a subprocess in a pseudo terminal

MODPY_DISTV =	0.7.0
REVISION =		5
DISTNAME =		ptyprocess-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/pexpect/ptyprocess

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		flit_core
MODPY_PYTEST =		Yes

xx-do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>

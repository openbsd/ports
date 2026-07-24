COMMENT =		Reticulum based mesh communication

MODPY_DISTV =		1.2.7
DISTNAME =		nomadnet-${MODPY_DISTV}
PKGNAME =		${DISTNAME}

CATEGORIES =		net

HOMEPAGE =		https://github.com/markqvist/nomadnet

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

SITES =			https://deftly.net/dist/
MODPY_PYBUILD =		setuptools

NO_TEST =		Yes

RUN_DEPENDS =		devel/py-urwid \
			net/py-rns \
			net/py-lxmf \
			textproc/py-pygments

.include <bsd.port.mk>

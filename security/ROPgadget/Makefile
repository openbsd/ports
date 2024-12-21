COMMENT =	Gadgets finder and auto-roper

MODPY_DISTV =	7.4
GH_TAGNAME =	v${MODPY_DISTV}
GH_PROJECT =	ROPGadget
GH_ACCOUNT =	JonathanSalwan
DISTNAME =	ROPGadget-${MODPY_DISTV}
REVISION =	1

CATEGORIES =	security

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	devel/capstone/python

WRKDIST =	${WRKDIR}/ROPgadget-${MODPY_DISTV}

.include <bsd.port.mk>

COMMENT =	The Router Exploitation Framework

MODPY_DISTV =	3.4.0
GH_ACCOUNT =	threat9
GH_PROJECT =	routersploit
GH_TAGNAME =	v${MODPY_DISTV}
REVISION =	7

CATEGORIES =	security net

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =	setuptools
RUN_DEPENDS =		devel/py-future \
			net/py-snmp \
			security/py-cryptodome \
			security/py-paramiko \
			www/py-requests

NO_TEST =		Yes

.include <bsd.port.mk>

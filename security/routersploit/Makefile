COMMENT	=	The Router Exploitation Framework

MODPY_DISTV =	3.4.7
REVISION =	0
GH_ACCOUNT =	threat9
GH_PROJECT =	routersploit
GH_TAGNAME =	v${MODPY_DISTV}

CATEGORIES =	security net

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
RUN_DEPENDS =	net/py-snmp \
		net/py-standard-telnetlib \
		security/py-cryptodome \
		security/py-paramiko \
		sysutils/py-standard-pkg-resources \
		www/py-requests

NO_TEST =	Yes

.include <bsd.port.mk>

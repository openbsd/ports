COMMENT	=	The Router Exploitation Framework

MODPY_DISTV =	3.4.7
GH_ACCOUNT =	threat9
GH_PROJECT =	routersploit
GH_TAGNAME =	v${MODPY_DISTV}

CATEGORIES =	security net

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
# will need standard-telnetlib when updating python to 3.13
RUN_DEPENDS =	devel/py-setuptools \
		net/py-snmp \
		security/py-cryptodome \
		security/py-paramiko \
		www/py-requests

NO_TEST =	Yes

.include <bsd.port.mk>

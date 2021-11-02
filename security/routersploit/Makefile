# $OpenBSD: Makefile,v 1.7 2021/11/02 00:02:19 sthen Exp $

COMMENT =	The Router Exploitation Framework

MODPY_EGG_VERSION = 3.4.0
GH_ACCOUNT =	threat9
GH_PROJECT =	routersploit
GH_TAGNAME =	v${MODPY_EGG_VERSION}
REVISION =	2

CATEGORIES =	security net

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		devel/py-future${MODPY_FLAVOR} \
			net/py-snmp${MODPY_FLAVOR} \
			security/py-cryptodome${MODPY_FLAVOR} \
			security/py-paramiko${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>

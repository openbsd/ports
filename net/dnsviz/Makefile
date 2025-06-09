COMMENT =	tool suite for analysis and visualization of DNS and DNSSEC

MODPY_DISTV =	0.11.1
DISTNAME =	dnsviz-${MODPY_DISTV}
CATEGORIES =	net

HOMEPAGE =	https://dnsviz.net/

MAINTAINER =	Lucas Gabriel Vuotto <lucas@sexy.is>

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS +=	math/py-pygraphviz \
		net/py-dnspython \
		security/py-cryptography

.include <bsd.port.mk>

COMMENT =	RFC4510 conforming LDAP V3 pure Python client library

MODPY_DISTV =	2.9.1
DISTNAME =	ldap3-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	4

CATEGORIES =	databases

HOMEPAGE =	https://github.com/cannatag/ldap3

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

# test directory incomplete in pypi upload; missing files are in the
# github repo but they also require network access.
NO_TEST =	Yes

RUN_DEPENDS =	devel/py-asn1

.include <bsd.port.mk>

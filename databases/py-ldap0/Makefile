# $OpenBSD: Makefile,v 1.1.1.1 2020/06/12 09:56:18 landry Exp $

COMMENT =	provides an API to access LDAP directory servers for Python

MODPY_EGG_VERSION =	1.0.11

DISTNAME =	ldap0-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	databases devel

HOMEPAGE =	https://gitlab.com/ae-dir/python-ldap0

MAINTAINER =	Lucas Raab <tuftedocelot@fastmail.fm>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODPY_WANTLIB} pthread ldap_r

MODULES =	lang/python
FLAVOR =	python3
FLAVORS =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

# tests not shipped on PyPi
NO_TEST =	Yes
LIB_DEPENDS +=	databases/openldap
RUN_DEPENDS =	devel/py-asn1${MODPY_FLAVOR} \
		devel/py-asn1-modules${MODPY_FLAVOR}

MAKE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>

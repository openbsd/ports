COMMENT =	provides an API to access LDAP directory servers for Python

FIX_EXTRACT_PERMISSIONS = Yes

MODPY_DISTV =	1.4.10

DISTNAME =	ldap0-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	databases devel

HOMEPAGE =	https://code.stroeder.com/pymod/python-ldap0

MAINTAINER =	Lucas Raab <tuftedocelot@fastmail.fm>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODPY_WANTLIB} pthread ldap

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools

LIB_DEPENDS +=	databases/openldap
RUN_DEPENDS =	devel/py-asn1 \
		devel/py-asn1-modules
TEST_DEPENDS =	${RUN_DEPENDS} \
		databases/openldap,-server

MAKE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"
TEST_ENV=	BIN=${LOCALBASE}/bin \
		SLAPD=${LOCALBASE}/libexec/slapd

.include <bsd.port.mk>

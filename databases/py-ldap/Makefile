COMMENT=	LDAP client API for Python

MODPY_DISTV =	3.4.5
DISTNAME=	python_ldap-${MODPY_DISTV}
PKGNAME=	py-ldap-${MODPY_DISTV}

CATEGORIES=	databases

HOMEPAGE=	https://www.python-ldap.org/

# Python
PERMIT_PACKAGE=	Yes

WANTLIB += lber ldap pthread ${MODPY_WANTLIB}

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		databases/openldap

RUN_DEPENDS=	${MODPY_RUN_DEPENDS} \
		devel/py-asn1-modules

MAKE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

TEST_DEPENDS=	${RUN_DEPENDS} \
		databases/openldap,-server
TEST_ENV=	SBIN=${LOCALBASE}/libexec:${LOCALBASE}/sbin \
		PATH=${PORTPATH}:${LOCALBASE}/sbin

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.58 2021/11/02 00:00:16 sthen Exp $

COMMENT=		LDAP client API for Python

MODPY_EGG_VERSION =	3.3.1
DISTNAME=		python-ldap-${MODPY_EGG_VERSION}
PKGNAME=		py-ldap-${MODPY_EGG_VERSION}
REVISION=		2

CATEGORIES=		databases

HOMEPAGE=		https://www.python-ldap.org/

# Python
PERMIT_PACKAGE=	Yes

WANTLIB += lber ldap_r pthread ${MODPY_WANTLIB}

MODULES=		lang/python

FLAVORS=		python3
FLAVOR=			python3

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			databases/openldap

RUN_DEPENDS=		${MODPY_RUN_DEPENDS} \
			devel/py-asn1-modules${MODPY_FLAVOR}

MAKE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MODPY_PYTEST=		Yes
TEST_DEPENDS=		${RUN_DEPENDS} \
			databases/openldap,-server
TEST_ENV=		SBIN=${LOCALBASE}/libexec:${LOCALBASE}/sbin

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-ldap
	cd ${WRKSRC}; tar cf - Demo | tar xf - -C \
		${PREFIX}/share/examples/py-ldap

.include <bsd.port.mk>

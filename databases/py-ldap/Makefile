# $OpenBSD: Makefile,v 1.51 2019/07/12 20:43:59 sthen Exp $

COMMENT-main=		LDAP client API for Python
COMMENT-examples=	example programs for the LDAP client API for Python

MODPY_EGG_VERSION =	3.2.0
REVISION=		2
DISTNAME=		python-ldap-${MODPY_EGG_VERSION}
PKGNAME=		py-ldap-${MODPY_EGG_VERSION}

FULLPKGPATH-main=	databases/py-ldap,-main${MODPY_FLAVOR}
FULLPKGNAME-main=	${MODPY_PY_PREFIX}ldap-${MODPY_EGG_VERSION}
FULLPKGPATH-examples=	databases/py-ldap,-examples${MODPY_FLAVOR}
FULLPKGNAME-examples=	${MODPY_PY_PREFIX}ldap-examples-${MODPY_EGG_VERSION}

CATEGORIES=		databases

HOMEPAGE=		https://www.python-ldap.org/

# Python
PERMIT_PACKAGE=	Yes

WANTLIB-main += lber ldap_r pthread ${MODPY_WANTLIB}

MULTI_PACKAGES=		-main -examples

MODULES=		lang/python

FLAVORS=		python3
FLAVOR?=

# @pkgpath markers only for py2 flavour
SUBST_VARS+=		MODPY_2ONLY
.if ${FLAVOR} == python3
MODPY_2ONLY = "@comment "
.else
MODPY_2ONLY =
.endif

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

LIB_DEPENDS-main=	${MODPY_LIB_DEPENDS} \
			databases/openldap

RUN_DEPENDS-main=	${MODPY_RUN_DEPENDS} \
			devel/py-asn1-modules${MODPY_FLAVOR}

MAKE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

TEST_DEPENDS=		${RUN_DEPENDS-main} \
			databases/openldap,-server
TEST_ENV=		SBIN=${LOCALBASE}/libexec:${LOCALBASE}/sbin

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}ldap
	cd ${WRKSRC}; tar cf - Demo | tar xf - -C \
		${PREFIX}/share/examples/${MODPY_PY_PREFIX}ldap

.include <bsd.port.mk>

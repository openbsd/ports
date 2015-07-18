# $OpenBSD: Makefile,v 1.37 2015/07/18 21:11:18 jasper Exp $

SHARED_ONLY=		Yes

COMMENT-main=		LDAP client API for Python
COMMENT-examples=	example programs for the LDAP client API for Python

MODPY_EGG_VERSION=	2.4.19
DISTNAME=		python-ldap-${MODPY_EGG_VERSION}
PKGNAME-main=		py-ldap-${MODPY_EGG_VERSION}
PKGNAME-examples=	py-ldap-examples-${MODPY_EGG_VERSION}

CATEGORIES=		databases

HOMEPAGE=		http://python-ldap.sourceforge.net/

# Python
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-main += ldap_r pthread ${MODPY_WANTLIB}

MULTI_PACKAGES=		-main -examples

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

LIB_DEPENDS-main=	${MODPY_LIB_DEPENDS} \
			databases/openldap

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			devel/py-asn1-modules

pre-configure:
	sed -i 's,/opt/openldap-RE24/lib,${LOCALBASE}/lib,;' \
		-e 's,/opt/openldap-RE24/include,${LOCALBASE}/include,;' \
		-e 's,/usr/include/sasl,${LOCALBASE}/include/sasl,' \
		${WRKSRC}/setup.cfg

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-ldap
	cd ${WRKSRC}; tar cf - Demo | tar xf - -C \
		${PREFIX}/share/examples/py-ldap
	find ${PREFIX} -name '.cvsignore' -exec rm '{}' \+

do-test: fake
	cd ${WRKSRC}/Tests/Lib && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_ldapurl.py

.include <bsd.port.mk>

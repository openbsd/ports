# $OpenBSD: Makefile,v 1.45 2017/07/23 09:30:23 ajacoutot Exp $

COMMENT-main=		LDAP client API for Python
COMMENT-examples=	example programs for the LDAP client API for Python

MODPY_EGG_VERSION =	2.4.41
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

RUN_DEPENDS-main=	${MODPY_RUN_DEPENDS} \
			devel/py-asn1-modules

TEST_DEPENDS=		${RUN_DEPENDS-main} \
			databases/openldap,-server

pre-configure:
	sed -i -e 's,/opt/openldap-RE24/lib,${LOCALBASE}/lib,;' \
		-e 's,/opt/openldap-RE24/include,${LOCALBASE}/include,;' \
		-e 's,/usr/include/sasl,${LOCALBASE}/include/sasl,' \
		${WRKSRC}/setup.cfg

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-ldap
	cd ${WRKSRC}; tar cf - Demo | tar xf - -C \
		${PREFIX}/share/examples/py-ldap
	find ${PREFIX} -name '.cvsignore' -exec rm '{}' \+

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.35 2013/03/11 02:52:07 espie Exp $

SHARED_ONLY=		Yes

COMMENT-main=		LDAP client API for Python
COMMENT-examples=	example programs for the LDAP client API for Python

V=			2.3.1
DISTNAME=		python-ldap-${V}
PKGNAME-main=		py-ldap-${V}
REVISION-main =		11
FULLPKGNAME-examples=	py-ldap-examples-${V}
REVISION-examples =	10
FULLPKGPATH-examples=	databases/py-ldap,-examples

CATEGORIES=		databases

HOMEPAGE=		http://python-ldap.sourceforge.net/

# Python
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-main=		crypto ssl ${MODPY_WANTLIB}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=python-ldap/}

MODULES=		lang/python

LIB_DEPENDS-main=	databases/openldap \
			security/cyrus-sasl2
WANTLIB-main +=		ldap_r>=7 lber>=7 sasl2>=2

MULTI_PACKAGES= -main -examples

EXAMPLESDIR=		${PREFIX}/share/examples/py-ldap

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	cd ${WRKSRC}; tar cf - Demo | tar xf - -C ${EXAMPLESDIR}
	find ${WRKINST} -name \*.egg-info -exec rm {} \;

do-test: fake
	@cd ${WRKSRC}/Tests/Lib && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_ldapurl.py

.include <bsd.port.mk>

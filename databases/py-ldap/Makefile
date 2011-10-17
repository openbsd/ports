# $OpenBSD: Makefile,v 1.32 2011/10/17 13:57:59 espie Exp $

SHARED_ONLY=		Yes

COMMENT-main=		LDAP client API for Python
COMMENT-examples=	example programs for the LDAP client API for Python

V=			2.3.1
DISTNAME=		python-ldap-${V}
PKGNAME-main=		py-ldap-${V}
REVISION-main =		9
FULLPKGNAME-examples=	py-ldap-examples-${V}
REVISION-examples =	9
FULLPKGPATH-examples=	databases/py-ldap,-examples

CATEGORIES=		databases

HOMEPAGE=		http://python-ldap.sourceforge.net/

# Python
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB-main=		crypto ssl ${MODPY_WANTLIB}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=python-ldap/}

MODULES=		lang/python
MODPY_VERSION=		${FLAVOR:S/python//}

LIB_DEPENDS-main=	databases/openldap \
			security/cyrus-sasl2
WANTLIB-main +=		ldap_r>=7 lber>=7 sasl2>=2

FLAVORS=		python2.4 python2.7
.if !defined(FLAVOR) || empty(FLAVOR)
FLAVOR=			python2.7
.endif

.if ${FLAVOR} == "python2.4"
MULTI_PACKAGES= -main
.elif ${FLAVOR} == "python2.7"
MULTI_PACKAGES= -main -examples
.else
ERRORS+=	"Fatal: You must select one version: ${FLAVORS}"
.endif

EXAMPLESDIR=		${PREFIX}/share/examples/py-ldap

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	cd ${WRKSRC}; tar cf - Demo | tar xf - -C ${EXAMPLESDIR}
	find ${WRKINST} -name \*.egg-info -exec rm {} \;

do-regress: fake
	@cd ${WRKSRC}/Tests/Lib && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_ldapurl.py 

.include <bsd.port.mk>

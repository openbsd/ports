# $OpenBSD: Makefile,v 1.16 2008/01/11 09:03:16 winiger Exp $

SHARED_ONLY=		Yes

COMMENT-main=		LDAP client API for Python
COMMENT-examples=	example programs for the LDAP client API for Python

V=			2.2.0
DISTNAME=		python-ldap-${V}
PKGNAME-main=		py-ldap-${V}p1
FULLPKGNAME-examples=	py-ldap-examples-${V}

CATEGORIES=		databases

HOMEPAGE=		http://python-ldap.sourceforge.net/

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

# Python
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB-main=		crypto ssl

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=python-ldap/}

LIB_DEPENDS-main=	ldap_r.>=7,lber.>=7::databases/openldap \
			sasl2.>=2::security/cyrus-sasl2

FLAVORS=		python2.4 python2.5
FLAVOR?=		python2.5

.if !${FLAVOR} || ${FLAVOR:L:Npython?.?}
ERRORS+=	"Fatal: You must select one version: ${FLAVORS}"
.endif

MULTI_PACKAGES=		-main -examples

MODPY_VERSION=		${FLAVOR:S/python//}

MODULES=		lang/python

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

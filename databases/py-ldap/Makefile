# $OpenBSD: Makefile,v 1.5 2004/09/14 23:29:07 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"LDAP client API for Python"
COMMENT-examples=	"LDAP client API for Python, samples"

VERSION=	2.0.0pre19
DISTNAME=	python-ldap-${VERSION}
PKGNAME=	py-ldap-${VERSION}
CATEGORIES=	databases

HOMEPAGE=	http://python-ldap.sourceforge.net/

MAINTAINER=	Marc Balmer <marc@msys.ch>

# Python
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=python-ldap/}

FLAVORS=	py2.1 py2.2 py2.3
FLAVOR?=	py2.1

MODULES=	lang/python

.if ${FLAVOR:L} == "py2.1" || ${FLAVOR:L} == "py2.2" || ${FLAVOR:L} == "py2.3"
MODPY_VERSION=	${FLAVOR:L:S/py//}
.else
ERRORS+=	"Fatal: Conflicting flavor: ${FLAVOR}"
.endif
MULTI_PACKAGES=-examples
FULLPKGNAME-examples=py-ldap-examples-${VERSION}

LIB_DEPENDS=	ldap_r,lber::databases/openldap

EXAMPLESDIR=	${PREFIX}/share/examples/py-ldap

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	cd ${WRKSRC}; tar cf - Demo | tar xf - -C ${EXAMPLESDIR}

do-regress: fake
	@cd ${WRKSRC}/Tests/Lib && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_ldapurl.py 

.include <bsd.port.mk>

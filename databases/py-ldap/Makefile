# $OpenBSD: Makefile,v 1.4 2004/08/04 19:46:14 xsa Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"LDAP client API for Python"

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

FLAVORS=	2.1 2.2 2.3
FLAVOR?=	2.1

MODULES=	lang/python

.if ${FLAVOR} == "2.1" || ${FLAVOR} == "2.2" || ${FLAVOR} == "2.3"
MODPY_VERSION=	${FLAVOR}
.else
ERRORS+=	"Fatal: Conflicting flavor: ${FLAVOR}"
.endif

LIB_DEPENDS=	ldap,lber::databases/openldap

EXAMPLESDIR=	${PREFIX}/share/examples/py-ldap

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	cd ${WRKSRC}; tar cf - Demo | tar xf - -C ${EXAMPLESDIR}

do-regress: fake
	@cd ${WRKSRC}/Tests/Lib && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_ldapurl.py 

.include <bsd.port.mk>

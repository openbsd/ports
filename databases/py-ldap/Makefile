# $OpenBSD: Makefile,v 1.2 2004/01/29 17:13:37 sturm Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"LDAP client API for Python"

VERSION=	2.0.0pre14
DISTNAME=	python-ldap-${VERSION}
PKGNAME=	py-ldap-${VERSION}
CATEGORIES=	databases

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=python-ldap/}
HOMEPAGE=	http://python-ldap.sourceforge.net/

MAINTAINER=	Marc Balmer <marc@msys.ch>

# Python
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

FLAVORS=	2.1 2.2
FLAVOR?=	2.1

MODULES=	python
.if ${FLAVOR} == "2.1" || ${FLAVOR} == "2.2"
MODPY_VERSION=	${FLAVOR}
.elif ${FLAVOR:M2.1} && ${FLAVOR:M2.2}
ERRORS+=	"Fatal: these flavors are mutually exclusive: ${FLAVOR}"
.endif

LIB_DEPENDS=	ldap,lber::databases/openldap

NO_REGRESS=	Yes

.include <bsd.port.mk>

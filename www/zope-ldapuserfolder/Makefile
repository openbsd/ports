# $OpenBSD: Makefile,v 1.3 2006/10/05 10:23:24 mbalmer Exp $

COMMENT=	"Zope LDAPUserFolder product"

VERSION=	2_7
DISTNAME=	LDAPUserFolder-${VERSION}
PKGNAME=	zope-${DISTNAME:S/_/./:L}
CATEGORIES=	www
HOMEPAGE=	http://www.dataflake.org/software/ldapuserfolder

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/ldapuserfolder_${VERSION:S/_/./g}/
EXTRACT_SUFX=	.tgz

MODULES=	zope

RUN_DEPENDS=	:py-ldap-*:databases/py-ldap

WRKDIST=	${WRKDIR}/LDAPUserFolder

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	cd ${WRKDIR}; tar cf - LDAPUserFolder | tar xf - \
		-C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>

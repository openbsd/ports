# $OpenBSD: Makefile,v 1.8 2008/03/20 11:58:25 winiger Exp $

COMMENT=	Zope LDAPUserFolder product

VERSION=	2.8
DISTNAME=	LDAPUserFolder-${VERSION}
PKGNAME=	zope-${DISTNAME:L}p0
CATEGORIES=	www
HOMEPAGE=	http://www.dataflake.org/software/ldapuserfolder

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/ldapuserfolder_${VERSION}/
EXTRACT_SUFX=	.tgz

MODULES=	www/zope

PY_FLAVOR=	python${MODZOPE_PYTHON_VERSION}

RUN_DEPENDS=	:py-ldap-*-${PY_FLAVOR}:databases/py-ldap,${PY_FLAVOR}

WRKDIST=	${WRKDIR}/LDAPUserFolder

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	cd ${WRKDIR}; tar cf - LDAPUserFolder | tar xf - \
		-C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>

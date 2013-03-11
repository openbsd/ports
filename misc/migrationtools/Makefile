# $OpenBSD: Makefile,v 1.12 2013/03/11 11:23:57 espie Exp $

COMMENT=	perl scripts for migrating system information to LDAP

DISTNAME=	MigrationTools-47
PKGNAME=	${DISTNAME:L}
CATEGORIES=	misc

MASTER_SITES=	http://www.padl.com/download/
HOMEPAGE=	http://www.padl.com/OSS/MigrationTools.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/openldap

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
MTSDIR=		${PREFIX}/share/migrationtools/

do-install:
	${INSTALL_DATA_DIR} ${MTSDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/migrate_common.ph \
	    ${MTSDIR}/migrate_common.ph.dist
	${INSTALL_SCRIPT} ${WRKSRC}/*.pl ${MTSDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/*.sh ${MTSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${MTSDIR}

.include <bsd.port.mk>

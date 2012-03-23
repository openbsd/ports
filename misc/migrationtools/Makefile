# $OpenBSD: Makefile,v 1.11 2012/03/23 11:17:01 sthen Exp $

COMMENT=	perl scripts for migrating system information to LDAP

DISTNAME=	MigrationTools-47
PKGNAME=	${DISTNAME:L}
CATEGORIES=	misc

MASTER_SITES=	http://www.padl.com/download/
HOMEPAGE=	http://www.padl.com/OSS/MigrationTools.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	databases/openldap

NO_BUILD=	Yes
NO_REGRESS=	Yes
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

# $OpenBSD: Makefile,v 1.1.1.1 2002/10/12 17:31:43 shell Exp $

COMMENT=	"perl scripts for migrating system information to LDAP"

DISTNAME=	MigrationTools
PKGNAME=	migrationtools-44
CATEGORIES=	misc

MASTER_SITES=	http://www.padl.com/download/
HOMEPAGE=	http://www.padl.com/OSS/MigrationTools.html

# BSD license, included with the source files
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	openldap:openldap-client-*:databases/openldap

NO_BUILD=	YES
SUBST_VARS=	PKGNAME
WRKDIST=	${WRKDIR}/${DISTNAME}-44
MTSDIR=		${PREFIX}/share/${PKGNAME}/

do-install:
	${INSTALL_DATA_DIR} ${MTSDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/*.ph ${MTSDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/*.pl ${MTSDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/*.sh ${MTSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${MTSDIR}


.include <bsd.port.mk>

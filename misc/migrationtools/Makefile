# $OpenBSD: Makefile,v 1.10 2011/09/16 10:31:23 espie Exp $

COMMENT=	perl scripts for migrating system information to LDAP

DISTNAME=	MigrationTools-46
PKGNAME=	${DISTNAME:L}
REVISION=		0
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
	${INSTALL_SCRIPT} ${WRKSRC}/*.ph ${MTSDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/*.pl ${MTSDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/*.sh ${MTSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${MTSDIR}


.include <bsd.port.mk>

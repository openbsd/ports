# $OpenBSD: Makefile,v 1.3 2011/07/09 00:14:45 robert Exp $

COMMENT=	building material for websites

V=		5.0.0
DISTNAME=	concrete${V}_2
PKGNAME=	concrete5-${V}
REVISION=	0
EXTRACT_SUFX=	.zip
CATEGORIES=	www
HOMEPAGE=	http://www.concrete5.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=concretecms/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/concrete5
SUBST_VARS=	INSTDIR

MODULES=	lang/php
BUILD_DEPENDS=	archivers/unzip
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-mysql

do-install:
	@cd ${PREFIX} && ${UNZIP} -oq ${FULLDISTDIR}/${DISTFILES}
	@mv ${PREFIX}/concrete5.0.0 ${PREFIX}/concrete5

.include <bsd.port.mk>

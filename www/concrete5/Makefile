# $OpenBSD: Makefile,v 1.2 2010/11/22 08:36:47 espie Exp $

COMMENT=	building material for websites

V=		5.0.0
DISTNAME=	concrete${V}_2
PKGNAME=	concrete5-${V}
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

BUILD_DEPENDS=	archivers/unzip
RUN_DEPENDS=	www/php5/extensions,-mysql

do-install:
	@cd ${PREFIX} && ${UNZIP} -oq ${FULLDISTDIR}/${DISTFILES}
	@mv ${PREFIX}/concrete5.0.0 ${PREFIX}/concrete5

.include <bsd.port.mk>

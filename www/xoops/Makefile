# $OpenBSD: Makefile,v 1.1.1.1 2004/07/15 01:58:24 kevlo Exp $

COMMENT=	"dynamic object oriented portal script written in PHP"

DISTNAME=	xoops-2.0.7
CATEGORIES=	www

HOMEPAGE=	http://www.xoops.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xoops/}
EXTRACT_SUFX=	.tar.bz2

RUN_DEPENDS=	:php4-mysql->=4.3.1:www/php4/extensions,-mysql

NO_BUILD=	Yes
NO_REGRESS=	Yes

PREFIX=		/var/www
INSTDIR=	${PREFIX}/htdocs/xoops
SUBST_VARS=	INSTDIR

pre-fake:
	${INSTALL_DATA_DIR} ${INSTDIR}

do-install:
	@cd ${INSTDIR} && bzip2 -dc ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} | tar xvf -
	@chmod 777 ${INSTDIR}/html/{uploads,cache,templates_c}
	@chmod 666 ${INSTDIR}/html/mainfile.php

.include <bsd.port.mk>

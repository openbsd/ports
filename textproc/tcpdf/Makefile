# $OpenBSD: Makefile,v 1.2 2009/09/28 03:32:11 jolan Exp $

COMMENT=	PHP class for generating PDF documents
DISTNAME=	tcpdf_4_8_007
PKGNAME=	tcpdf-4.8.007
EXTRACT_SUFX=	.zip
CATEGORIES=	textproc www/php5
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tcpdf/}

HOMEPAGE=	http://www.tcpdf.org/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes
RUN_DEPENDS=	:php5-core-*:www/php5/core

WRKDIST=	${WRKDIR}/tcpdf
PREFIX=		/var/www
INSTDIR=	${PREFIX}/tcpdf

do-install:
	cd ${WRKDIST} && \
		find . -type d \
			-exec ${INSTALL_DATA_DIR} ${INSTDIR}/{} \; && \
		find . ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${INSTDIR}/{} \;

.include <bsd.port.mk>

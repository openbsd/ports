# $OpenBSD: Makefile,v 1.15 2010/07/31 21:07:48 jolan Exp $

COMMENT=	PHP class for generating PDF documents
DISTNAME=	tcpdf_5_6_000
PKGNAME=	tcpdf-5.6.000
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

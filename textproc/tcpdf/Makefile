# $OpenBSD: Makefile,v 1.25 2011/09/16 11:41:42 espie Exp $

COMMENT=	PHP class for generating PDF documents
DISTNAME=	tcpdf_5_9_068
PKGNAME=	tcpdf-5.9.068
EXTRACT_SUFX=	.zip
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tcpdf/}

REVISION=	1

HOMEPAGE=	http://www.tcpdf.org/

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	lang/php
MODPHP_BUILDDEP=No

NO_BUILD=	Yes
NO_REGRESS=	Yes

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

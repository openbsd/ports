# $OpenBSD: Makefile,v 1.29 2013/08/12 04:11:21 robert Exp $

COMMENT=	PHP class for generating PDF documents
DISTNAME=	tcpdf_5_9_068
PKGNAME=	tcpdf-5.9.068
EXTRACT_SUFX=	.zip
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tcpdf/}

REVISION=	3

HOMEPAGE=	http://www.tcpdf.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/php
MODPHP_BUILDDEP=No

NO_BUILD=	Yes
NO_TEST=	Yes

WRKDIST=	${WRKDIR}/tcpdf
PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/tcpdf

do-install:
	cd ${WRKDIST} && \
		find . -type d \
			-exec ${INSTALL_DATA_DIR} ${INSTDIR}/{} \; && \
		find . ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${INSTDIR}/{} \;

.include <bsd.port.mk>

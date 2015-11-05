# $OpenBSD: Makefile,v 1.32 2015/11/05 14:04:09 benoit Exp $

COMMENT=	PHP class for generating PDF documents
DISTNAME =	tcpdf_6_2_12
PKGNAME =	tcpdf-6.2.12
CATEGORIES=	textproc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tcpdf/}

HOMEPAGE=	http://www.tcpdf.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX =	.zip

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

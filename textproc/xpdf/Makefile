# $OpenBSD: Makefile,v 1.6 1999/10/06 20:36:29 rohee Exp $

DISTNAME=	xpdf-0.90
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_TEX_CTAN} \
		ftp://ftp.duke.edu/pub/X11/contrib/applications/ \
		ftp://ftp.foolabs.com/pub/xpdf/
MASTER_SITE_SUBDIR= support/xpdf
EXTRACT_SUFX=	.tgz

PATCH_DIST_STRIP=	-p1
PATCH_SITES=	http://www.fefe.de/
PATCHFILES=	xpdf-0.90-fefe-diff2.gz

MAINTAINER=	eep@inconnect.com

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-gzip

.include <bsd.port.mk>

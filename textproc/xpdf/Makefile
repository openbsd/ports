# $OpenBSD: Makefile,v 1.7 2000/02/02 17:02:38 espie Exp $

DISTNAME=	xpdf-0.90
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_TEX_CTAN} \
		ftp://ftp.duke.edu/pub/X11/contrib/applications/ \
		ftp://ftp.foolabs.com/pub/xpdf/
MASTER_SITES0=	http://www.fefe.de/
MASTER_SITE_SUBDIR= support/xpdf
NEED_VERSION=	1.175
EXTRACT_SUFX=	.tgz

PATCH_DIST_STRIP=	-p1
PATCHFILES=	xpdf-0.90-fefe-diff2.gz:0

MAINTAINER=	eep@inconnect.com

USE_X11=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--with-gzip

.include <bsd.port.mk>

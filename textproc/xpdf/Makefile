# $OpenBSD: Makefile,v 1.10 2000/03/24 22:12:02 espie Exp $

DISTNAME=	xpdf-0.90
CATEGORIES=	textproc
NEED_VERSION=	1.175
MASTER_SITES=	${MASTER_SITE_TEX_CTAN} \
		ftp://ftp.duke.edu/pub/X11/contrib/applications/ \
		ftp://ftp.foolabs.com/pub/xpdf/
MASTER_SITES0=	http://www.fefe.de/
MASTER_SITE_SUBDIR= support/xpdf
EXTRACT_SUFX=	.tgz

PATCH_DIST_STRIP=	-p1
PATCHFILES=	xpdf-0.90-fefe-diff2.gz:0

MAINTAINER=	eep@inconnect.com

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

USE_X11=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--with-gzip

.include <bsd.port.mk>

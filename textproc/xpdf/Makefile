# $OpenBSD: Makefile,v 1.12 2000/07/04 12:48:02 fgsch Exp $

DISTNAME=	xpdf-0.90
CATEGORIES=	textproc x11
NEED_VERSION=	1.311
MASTER_SITES=	${MASTER_SITE_TEX_CTAN} \
		ftp://ftp.duke.edu/pub/X11/contrib/applications/ \
		ftp://ftp.foolabs.com/pub/xpdf/
MASTER_SITES0=	http://www.fefe.de/
MASTER_SITE_SUBDIR= support/xpdf
EXTRACT_SUFX=	.tgz

PATCH_DIST_STRIP=	-p1
PATCHFILES=	xpdf-0.90-fefe-diff2.gz:0

MAINTAINER=	eep@inconnect.com

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		--with-gzip

.include <bsd.port.mk>

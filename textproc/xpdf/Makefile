# $OpenBSD: Makefile,v 1.11 2000/03/26 18:38:51 espie Exp $

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
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}' \
		--sysconfdir='$${DESTDIR}/etc' \
		--with-gzip
FAKE=		Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.14 2000/08/30 23:07:30 brad Exp $

DISTNAME=	xpdf-0.91
CATEGORIES=	textproc x11
NEED_VERSION=	1.320
MASTER_SITES=	${MASTER_SITE_TEX_CTAN}
MASTER_SITE_SUBDIR= support/xpdf
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.foolabs.com/xpdf/

MAINTAINER=	eep@inconnect.com

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--with-gzip --without-freetype-library

post-install:
	@cd ${PREFIX}/bin && \
	  strip pdfimages pdfinfo pdftopbm pdftops pdftotext xpdf

.include <bsd.port.mk>

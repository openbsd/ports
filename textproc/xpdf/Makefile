# $OpenBSD: Makefile,v 1.15 2000/08/31 09:31:45 brad Exp $

DISTNAME=	xpdf-0.91
CATEGORIES=	textproc x11
NEED_VERSION=	1.320
MASTER_SITES=	${MASTER_SITE_TEX_CTAN}
MASTER_SITE_SUBDIR= support/xpdf
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	t1x.1::devel/t1lib

HOMEPAGE=	http://www.foolabs.com/xpdf/

MAINTAINER=	eep@inconnect.com

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--with-gzip \
		--with-t1-library="${LOCALBASE}/lib" \
		--with-t1-includes="${LOCALBASE}/include"

FLAVORS=	freetype
FLAVOR=

.if ${FLAVOR:L:Mfreetype}
LIB_DEPENDS+=	ttf.1.3::print/freetype
CONFIGURE_ARGS+= --with-freetype-library="${LOCALBASE}/lib" \
		 --with-freetype-includes="${LOCALBASE}/include"
.else
CONFIGURE_ARGS+= --without-freetype-library
.endif

post-install:
	@cd ${PREFIX}/bin && \
	  strip pdfimages pdfinfo pdftopbm pdftops pdftotext xpdf

.include <bsd.port.mk>

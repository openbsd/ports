# $OpenBSD: Makefile,v 1.17 2001/03/07 19:10:01 brad Exp $

DISTNAME=	xpdf-0.92
CATEGORIES=	textproc x11
NEED_VERSION=	1.336
MASTER_SITES=	${MASTER_SITE_TEX_CTAN}
MASTER_SITE_SUBDIR= support/xpdf
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.foolabs.com/xpdf/

LIB_DEPENDS=	t1x.1::devel/t1lib

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-gzip \
		--with-t1-library="${LOCALBASE}/lib" \
		--with-t1-includes="${LOCALBASE}/include"

FLAVORS=	freetype
FLAVOR=

.if ${FLAVOR:L:Mfreetype}
LIB_DEPENDS+=	ttf.1.3::print/freetype
CONFIGURE_ARGS+= --with-freetype-library="${LOCALBASE}/lib" \
		 --with-freetype-includes="${LOCALBASE}/include/freetype"
.else
CONFIGURE_ARGS+= --without-freetype-library
.endif

post-install:
	@cd ${PREFIX}/bin && \
	  strip pdfimages pdfinfo pdftopbm pdftops pdftotext xpdf

.include <bsd.port.mk>

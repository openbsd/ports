# $OpenBSD: Makefile,v 1.25 2002/03/30 21:48:27 brad Exp $

COMMENT=	"PDF viewer for X"

DISTNAME=	xpdf-0.93
CATEGORIES=	textproc x11
NEED_VERSION=	1.500
MASTER_SITES=	${MASTER_SITE_BACKUP}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.foolabs.com/xpdf/

LIB_DEPENDS=	t1x.3,t1.3::devel/t1lib \
		ttf.1.3::print/freetype

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-gzip \
		--enable-japanese \
		--enable-chinese-cns \
		--enable-chinese-gb \
		--with-t1-library="${LOCALBASE}/lib" \
		--with-t1-includes="${LOCALBASE}/include" \
		--with-freetype-library="${LOCALBASE}/lib" \
		--with-freetype-includes="${LOCALBASE}/include/freetype"

post-install:
	@cd ${PREFIX}/bin && \
	  strip pdfimages pdfinfo pdftopbm pdftops pdftotext xpdf

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.39 2004/01/31 18:06:38 brad Exp $

COMMENT=	"PDF viewer for X"

DISTNAME=	xpdf-3.00
CATEGORIES=	textproc x11

MASTER_SITES=	ftp://ftp.foolabs.com/pub/xpdf/

HOMEPAGE=	http://www.foolabs.com/xpdf/

LIB_DEPENDS+=	t1x.3,t1.3::devel/t1lib
RUN_DEPENDS+=	::print/ghostscript/gnu-fonts

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
USE_MOTIF=	openmotif
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-multithreaded \
		 --without-Sgm-library \
		 --without-libpaper-library
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include/freetype2 -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_REGRESS=	Yes

post-install:
	@cd ${PREFIX}/bin && \
	  strip pdffonts pdfimages pdfinfo pdftoppm pdftops pdftotext xpdf

.include <bsd.port.mk>

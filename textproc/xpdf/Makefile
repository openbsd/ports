# $OpenBSD: Makefile,v 1.30 2002/10/28 22:43:46 naddy Exp $

COMMENT=	"PDF viewer for X"

DISTNAME=	xpdf-1.01
CATEGORIES=	textproc x11

MASTER_SITES=	ftp://ftp.foolabs.com/pub/xpdf/

HOMEPAGE=	http://www.foolabs.com/xpdf/

LIB_DEPENDS=	t1x.3,t1.3::devel/t1lib

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-gzip
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include/freetype2 -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_REGRESS=	Yes

post-install:
	@cd ${PREFIX}/bin && \
	  strip pdffonts pdfimages pdfinfo pdftopbm pdftops pdftotext xpdf

.include <bsd.port.mk>

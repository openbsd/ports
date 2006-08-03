# $OpenBSD: Makefile,v 1.53 2006/08/03 23:55:11 espie Exp $

COMMENT=	"PDF viewer for X"

DISTNAME=	xpdf-3.01
PKGNAME=	${DISTNAME}p1
CATEGORIES=	textproc x11

MASTER_SITES=	ftp://ftp.foolabs.com/pub/xpdf/

HOMEPAGE=	http://www.foolabs.com/xpdf/

LIB_DEPENDS+=	t1.>=3::devel/t1lib
RUN_DEPENDS+=	::print/ghostscript/gnu-fonts

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xp Xpm Xt c freetype m pthread \
			stdc++ 

USE_X11=	Yes
USE_GMAKE=	Yes
USE_MOTIF=	openmotif
CONFIGURE_STYLE=autoconf no-autoheader
AUTOCONF_VERSION=2.59
CONFIGURE_ARGS+= --enable-multithreaded \
		 --without-Sgm-library \
		 --without-libpaper-library
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include/freetype2 -I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_REGRESS=	Yes

post-install:
	@cd ${PREFIX}/bin && \
	  strip pdffonts pdfimages pdfinfo pdftoppm pdftops pdftotext xpdf
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xpdf
	${INSTALL_DATA} ${WRKSRC}/doc/sample-xpdfrc \
		${PREFIX}/share/examples/xpdf/xpdfrc

.include <bsd.port.mk>

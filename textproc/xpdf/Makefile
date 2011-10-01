# $OpenBSD: Makefile,v 1.81 2011/10/01 19:46:35 kili Exp $

COMMENT-main=	PDF viewer for X11
COMMENT-utils=	PDF conversion tools

DISTNAME=	xpdf-3.03
PKGNAME-main=	xpdf-3.03
PKGNAME-utils=	xpdf-utils-3.03
CATEGORIES=	textproc x11

MASTER_SITES=	ftp://ftp.foolabs.com/pub/xpdf/ \
		ftp://gd.tuwien.ac.at/publishing/xpdf/ \
		http://mirror.ctan.org/support/xpdf/

HOMEPAGE=	http://www.foolabs.com/xpdf/

MULTI_PACKAGES=	-main -utils

# GPLv2 only or GPLv3 only or both (at our choice)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS+=	x11/openmotif
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= --enable-multithreaded \
		 --without-Sgm-library \
		 --without-libpaper-library

CONFIGURE_ENV=  CPPFLAGS='-I${X11BASE}/include/freetype2 -I${X11BASE}/include -I${LOCALBASE}/include -DLOCALBASE="\"${LOCALBASE}\""' \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -lm -lz"
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

LIB_DEPENDS-utils=
RUN_DEPENDS-utils=	print/ghostscript/gnu-fonts
RUN_DEPENDS-main=	${RUN_DEPENDS-utils} \
			${FULLPKGNAME-utils}:textproc/xpdf,-utils

WANTLIB-utils=		c m pthread stdc++ z
WANTLIB-main=		${WANTLIB} ${WANTLIB-utils} ICE SM X11 Xext Xpm Xt \
			freetype Xm

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xpdf
	${INSTALL_DATA} ${WRKSRC}/doc/sample-xpdfrc \
		${PREFIX}/share/examples/xpdf/xpdfrc

.include <bsd.port.mk>

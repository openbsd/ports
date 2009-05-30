# $OpenBSD: Makefile,v 1.65 2009/05/30 22:35:56 miod Exp $

COMMENT-main=	PDF viewer for X11
COMMENT-utils=	PDF conversion tools

DISTNAME=	xpdf-3.02
PKGNAME-main=	xpdf-3.02.3p0
PKGNAME-utils=	xpdf-utils-3.02.3
CATEGORIES=	textproc x11

MASTER_SITES=	ftp://ftp.foolabs.com/pub/xpdf/ \
		ftp://gd.tuwien.ac.at/publishing/xpdf/ \
		ftp://tug.org/xpdf/
PATCHFILES=	xpdf-3.02pl1.patch xpdf-3.02pl2.patch \
		xpdf-3.02pl3.patch
PATCH_DIST_STRIP=-p1

HOMEPAGE=	http://www.foolabs.com/xpdf/

MULTI_PACKAGES=	-main -utils

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_MOTIF=	openmotif
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= --enable-multithreaded \
		 --without-Sgm-library \
		 --without-libpaper-library

CONFIGURE_ENV=  CPPFLAGS='-I${X11BASE}/include/freetype2 -I${X11BASE}/include -I${LOCALBASE}/include -DLOCALBASE="\"${LOCALBASE}\""' \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -lz"

LIB_DEPENDS-utils=
LIB_DEPENDS-main=	t1.>=3::devel/t1lib ${LIB_DEPENDS}
RUN_DEPENDS-utils=	::print/ghostscript/gnu-fonts
RUN_DEPENDS-main=	${RUN_DEPENDS-utils} \
			:${FULLPKGNAME-utils}:textproc/xpdf,-utils

WANTLIB-utils=		c m pthread stdc++ z
WANTLIB-main=		${WANTLIB-utils} ICE SM X11 Xext Xp Xpm Xt freetype

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xpdf
	${INSTALL_DATA} ${WRKSRC}/doc/sample-xpdfrc \
		${PREFIX}/share/examples/xpdf/xpdfrc

.include <bsd.port.mk>

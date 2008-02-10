# $OpenBSD: Makefile,v 1.58 2008/02/10 20:25:13 landry Exp $

COMMENT=	PDF viewer for X11

DISTNAME=	xpdf-3.02
PKGNAME=	xpdf-3.02pl2p0
CATEGORIES=	textproc x11

MASTER_SITES=	ftp://ftp.foolabs.com/pub/xpdf/ \
		ftp://gd.tuwien.ac.at/publishing/xpdf/ \
		ftp://tug.org/xpdf/
PATCHFILES=	xpdf-3.02pl1.patch xpdf-3.02pl2.patch
PATCH_DIST_STRIP=-p1

HOMEPAGE=	http://www.foolabs.com/xpdf/

LIB_DEPENDS+=	t1.>=3::devel/t1lib
RUN_DEPENDS+=	::print/ghostscript/gnu-fonts

FLAVORS=        no_x11
FLAVOR?=

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=               c m pthread stdc++

USE_GMAKE=	Yes
CONFIGURE_STYLE=autoconf no-autoheader
AUTOCONF_VERSION=2.59
CONFIGURE_ARGS+= --enable-multithreaded \
		 --without-Sgm-library \
		 --without-libpaper-library

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-x
CONFIGURE_ENV= CPPFLAGS="-I${LOCALBASE}/include" \
               LDFLAGS="-L${LOCALBASE}/lib"
.else
USE_X11=       Yes
USE_MOTIF=     openmotif
WANTLIB+=      ICE SM X11 Xext Xp Xpm Xt freetype z
CONFIGURE_ENV=  CPPFLAGS="-I${X11BASE}/include/freetype2 -I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -lz"
.endif

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xpdf
	${INSTALL_DATA} ${WRKSRC}/doc/sample-xpdfrc \
		${PREFIX}/share/examples/xpdf/xpdfrc

.include <bsd.port.mk>

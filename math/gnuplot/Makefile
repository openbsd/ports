# $OpenBSD: Makefile,v 1.29 2006/08/25 10:08:33 espie Exp $

COMMENT=	"command-driven interactive function plotting program"

DISTNAME=	gnuplot-4.0.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	math graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gnuplot/}

HOMEPAGE=	http://www.gnuplot.info/

LIB_DEPENDS=	png.>=2::graphics/png

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c m z

FLAVORS=	no_x11
FLAVOR?=

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--without-linux-vga --without-gd --without-pdf \
		--with-png --with-readline --with-lasergnu \
		--without-lisp-files
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"
NO_REGRESS=	Yes

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-x
.else
USE_X11=	Yes
WANTLIB+=	X11
CONFIGURE_ARGS+= --with-x
.endif

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/lasergnu ${PREFIX}/bin/lasergnu
	-cat ${PATCHDIR}/patch-* >${PREFIX}/share/gnuplot/4.0/patches

post-build:

.include <bsd.port.mk>

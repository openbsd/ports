# $OpenBSD: Makefile,v 1.40 2009/10/07 20:01:06 sthen Exp $

COMMENT=	command-driven interactive function plotting program

V=		4.2
PATCHLEVEL=	6
DISTNAME=	gnuplot-${V}.${PATCHLEVEL}
CATEGORIES=	math graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gnuplot/}

HOMEPAGE=	http://www.gnuplot.info/

MAINTAINER=	Weldon Goree <wgoree@bu.edu>

# see Copyright in source
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m ncurses readline stdc++ z

FLAVORS=	no_x11
FLAVOR?=

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--without-linux-vga --without-pdf \
		--without-tutorial --with-readline \
		--with-lasergnu --disable-wxwidgets --without-lisp-files
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

REGRESS_IS_INTERACTIVE=	x11

SUBST_VARS=	V

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-x --without-gd
.else
LIB_DEPENDS=	gd.>=20::graphics/gd
USE_X11=	Yes
WANTLIB+=	X11 fontconfig freetype iconv jpeg png
CONFIGURE_ARGS+= --with-x
.endif

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/lasergnu ${PREFIX}/bin/lasergnu
	-cat ${PATCHDIR}/patch-* >${PREFIX}/share/gnuplot/${V}/patches

.include <bsd.port.mk>

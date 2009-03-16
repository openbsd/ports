# $OpenBSD: Makefile,v 1.19 2009/03/16 20:08:48 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-main=	advanced 2D and 3D scientific plotting library
COMMENT-c++ =	C++ interface to plplot
COMMENT-f77=	Fortran 77 interface to plplot
COMMENT-octave=	Octave bindings for plplot
COMMENT-tcl=	Tcl bindings for plplot

VERSION=	5.6.1
DISTNAME=	plplot-${VERSION}
SHARED_LIBS=	csirocsa	1.0	\
		plplotcxxd	11.0	\
		plplotd		12.0	\
		plplotf77cd	10.0	\
		plplotf77d	10.0	\
		plplottcltkd	11.0	\
		tclmatrixd	11.0

PKGNAME-main=	${DISTNAME}p2
PKGNAME-c++ =	plplot-c++-${VERSION}p1
PKGNAME-f77=	plplot-f77-${VERSION}p1
PKGNAME-octave=	plplot-octave-${VERSION}p7
PKGNAME-tcl=	plplot-tcl-${VERSION}p3

CATEGORIES=	math graphics

HOMEPAGE=	http://plplot.sourceforge.net/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

myWANTLIB=	m z freetype

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=plplot/}

MODULES=	lang/tcl converters/libiconv
MODTCL_VERSION=	8.4

USE_X11=	Yes
USE_LIBTOOL=	Yes
BUILD_DEPENDS=	${MODTCL_BUILD_DEPENDS} \
		::graphics/gd \
		::print/ghostscript/gnu-fonts
myRUN_DEPENDS=	::print/ghostscript/gnu-fonts
myLIB_DEPENDS=	ltdl::devel/libtool,-ltdl

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gcw \
		--disable-java \
		--disable-itcl \
		--disable-linuxvga \
		--disable-pdl \
		--disable-python \
		--disable-tk \
		--disable-tkwin \
		--disable-wxwidgets \
		--with-ltdlsystem \
		--with-gd-incdir=${LOCALBASE}/include \
		--with-gd-libdir=${LOCALBASE}/lib \
		--with-freetype2-incdir=${X11BASE}/include/freetype2 \
		--with-freetype2-libdir=${X11BASE}/lib \
		--with-freetype-font-dir=${LOCALBASE}/share/ghostscript/fonts \
		--with-freetype-sans-font=n019003l.pfb \
		--with-freetype-sans-bold-font=n019004l.pfb \
		--with-freetype-sans-oblique-font=n019023l.pfb \
		--with-freetype-sans-bold-oblique-font=n019024l.pfb \
		--with-freetype-serif-font=n021003l.pfb \
		--with-freetype-serif-bold-font=n021004l.pfb \
		--with-freetype-serif-italic-font=n021023l.pfb \
		--with-freetype-serif-bold-italic-font=n021024l.pfb \
		--with-freetype-mono-font=n022003l.pfb \
		--with-freetype-mono-bold-font=n022004l.pfb \
		--with-freetype-mono-oblique-font=n022023l.pfb \
		--with-freetype-mono-bold-oblique-font=n022024l.pfb \
		--with-freetype-symbol-font=s050000l.pfb

CONFIGURE_ENV=	F77=${FC} \
		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		TCLINCDIR="${MODTCL_INCDIR}" \
		TCLLIBDIR="${MODTCL_LIBDIR}" \
		TCLLIBSTR="-ltcl${MODTCL_VERSION:S/.//}"

GCC_ARCH=       ${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}
GNU_ARCH=       ${GCC_ARCH:S/amd64/x86_64/}
SUBST_VARS+=	GNU_ARCH

DOCSRC=		${WRKSRC}/doc/docbook/src

PSEUDO_FLAVORS=	no_octave
FLAVOR?=

MULTI_PACKAGES=	-main -c++ -f77 -tcl

.if ${FLAVOR:Mno_octave}
CONFIGURE_ARGS+=--disable-octave
.else
MULTI_PACKAGES+=-octave
.endif

WANTLIB-main=		${myWANTLIB} X11 Xau Xdmcp expat c fontconfig z png jpeg
WANTLIB-c++ =		${myWANTLIB}
WANTLIB-f77+=		${myWANTLIB} g2c
WANTLIB-octave+=	${myWANTLIB} g2c ncurses readline blas lapack fftw3
WANTLIB-tcl+=		${myWANTLIB} X11 Xau Xdmcp c

LIB_DEPENDS-main=	${MODLIBICONV_LIB_DEPENDS} \
			${myLIB_DEPENDS} \
			gd.>=20::graphics/gd
LIB_DEPENDS-c++ =	plplotd,csirocsa::math/plplot,-main \
			${myLIB_DEPENDS}
LIB_DEPENDS-f77=	plplotd,csirocsa::math/plplot,-main \
			${myLIB_DEPENDS}
LIB_DEPENDS-octave=	plplotd,csirocsa::math/plplot,-main \
			cruft,octave,octinterp::math/octave \
			${myLIB_DEPENDS}
LIB_DEPENDS-tcl=	plplotd,csirocsa::math/plplot,-main \
			${MODTCL_LIB_DEPENDS} \
			${myLIB_DEPENDS}

RUN_DEPENDS-main=	${MODLIBICONV_RUN_DEPENDS} ${myRUN_DEPENDS}
RUN_DEPENDS-c++ =
RUN_DEPENDS-f77=
RUN_DEPENDS-octave=
RUN_DEPENDS-tcl=

pre-configure:
	@perl -pi -e 's,tclsh,${MODTCL_BIN},' ${WRKSRC}/scripts/mktclIndex
	@perl -pi -e 's/3plplot/3/g' ${DOCSRC}/*.3plplot
	@cd ${DOCSRC} && for m in *.3plplot; do mv $$m $${m%\.3plplot}.3; done

post-install:
	${INSTALL_MAN} ${DOCSRC}/*.3 ${PREFIX}/man/man3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/plplot/html
	${INSTALL_DATA} ${DOCSRC}/*.html ${PREFIX}/share/doc/plplot/html

.include <bsd.port.mk>

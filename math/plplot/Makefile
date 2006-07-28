# $OpenBSD: Makefile,v 1.4 2006/07/28 06:29:34 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"advanced 2D and 3D scientific plotting library"
COMMENT-c++ =	"C++ interface to plplot"
COMMENT-f77=	"Fortran 77 interface to plplot"
COMMENT-octave=	"Octave bindings for plplot"
COMMENT-tcl=	"Tcl bindings for plplot"

VERSION=	5.6.1
DISTNAME=	plplot-${VERSION}
SHARED_LIBS=	csirocsa	0.1	\
		plplotcxxd	11.0	\
		plplotd		11.0	\
		plplotf77cd	10.0	\
		plplotf77d	10.0	\
		plplottcltkd	11.0	\
		tclmatrixd	11.0

PKGNAME-c++ =	plplot-c++-${VERSION}
PKGNAME-f77=	plplot-f77-${VERSION}
PKGNAME-octave=	plplot-octave-${VERSION}p0
PKGNAME-tcl=	plplot-tcl-${VERSION}

CATEGORIES=	math graphics

HOMEPAGE=	http://plplot.sourceforge.net/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	m freetype

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=plplot/}

TCL_VERSION=	8.4
TCLLIB=		tcl${TCL_VERSION:S/.//}

USE_X11=	Yes
USE_LIBTOOL=	Yes
BUILD_DEPENDS=	::lang/tcl/${TCL_VERSION} \
		::math/octave \
		::graphics/gd \
		::print/ghostscript/gnu-fonts \
		::devel/pkgconfig
RUN_DEPENDS=	::print/ghostscript/gnu-fonts
LIB_DEPENDS=	ltdl::devel/libtool,-ltdl

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
		TCLINCDIR="${LOCALBASE}/include/tcl${TCL_VERSION}" \
		TCLLIBDIR="${LOCALBASE}/lib" \
		TCLLIBSTR="-l${TCLLIB}"

GCC_ARCH=       ${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}
GNU_ARCH=       ${GCC_ARCH:S/amd64/x86_64/}
SUBST_VARS+=	GNU_ARCH

DOCSRC=		${WRKSRC}/doc/docbook/src

MULTI_PACKAGES=	-c++ -f77 -octave -tcl
SUBPACKAGE?=

.if defined(PACKAGING)
.  if empty(SUBPACKAGE)
MODULES=		converters/libiconv
WANTLIB+=		X11 c fontconfig z png jpeg
LIB_DEPENDS+=		gd.20::graphics/gd
.  else
LIB_DEPENDS+=		plplotd,csirocsa::math/plplot
.    if ${SUBPACKAGE} == "-f77"
WANTLIB+=		g2c
.    elif ${SUBPACKAGE} == "-octave"
WANTLIB+=		g2c ncurses readline blas lapack fftw3
LIB_DEPENDS+=		cruft,octave,octinterp::math/octave
.    elif ${SUBPACKAGE} == "-tcl"
WANTLIB+=		X11 c
LIB_DEPENDS+=		${TCLLIB}::lang/tcl/${TCL_VERSION}
.    endif
.  endif
.endif

pre-configure:
	@perl -pi -e 's,tclsh,tclsh${TCL_VERSION},' ${WRKSRC}/scripts/mktclIndex
	@perl -pi -e 's/3plplot/3/g' ${DOCSRC}/*.3plplot
	@cd ${DOCSRC} && for m in *.3plplot; do mv $$m $${m%\.3plplot}.3; done

post-install:
	${INSTALL_MAN} ${DOCSRC}/*.3 ${PREFIX}/man/man3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/plplot/html
	${INSTALL_DATA} ${DOCSRC}/*.html ${PREFIX}/share/doc/plplot/html

.include <bsd.port.mk>

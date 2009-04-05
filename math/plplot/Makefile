# $OpenBSD: Makefile,v 1.20 2009/04/05 16:21:55 steven Exp $

SHARED_ONLY=	Yes

COMMENT-main=	advanced 2D and 3D scientific plotting library
COMMENT-c++ =	C++ interface to plplot
COMMENT-f77=	Fortran 77 interface to plplot
COMMENT-octave=	Octave bindings for plplot
COMMENT-tcl=	Tcl bindings for plplot

VERSION=	5.8.0
DISTNAME=	plplot-${VERSION}
SHARED_LIBS=	csirocsa	2.0	\
		plplotcxxd	12.0	\
		plplotd		13.0	\
		plplotf77cd	11.0	\
		plplotf77d	11.0	\
		plplottcltkd	12.0	\
		tclmatrixd	12.0

PKGNAME-main=	${DISTNAME}
PKGNAME-c++ =	plplot-c++-${VERSION}
PKGNAME-f77=	plplot-f77-${VERSION}
PKGNAME-octave=	plplot-octave-${VERSION}
PKGNAME-tcl=	plplot-tcl-${VERSION}

CATEGORIES=	math graphics

HOMEPAGE=	http://plplot.sourceforge.net/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=plplot/}

MODULES=	devel/gettext
#MODULES+=	lang/tcl
#MODTCL_VERSION=	8.4

USE_X11=	Yes
USE_LIBTOOL=	Yes
BUILD_DEPENDS=	${MODTCL_BUILD_DEPENDS} \
		::graphics/gd \
		::print/ghostscript/gnu-fonts
myRUN_DEPENDS=	::print/ghostscript/gnu-fonts

MODULES+=	devel/cmake

CONFIGURE_STYLE=cmake

CONFIGURE_ARGS=	-D ENABLE_java=OFF \
		-D ENABLE_itcl=OFF \
		-D ENABLE_pdl=OFF \
		-D ENABLE_python=OFF \
		-D ENABLE_tcl=OFF \
		-D ENABLE_tk=OFF \
		-D ENABLE_wxwidgets=OFF \
		-D ENABLE_octave=OFF

GCC_ARCH=       ${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}
GNU_ARCH=       ${GCC_ARCH:S/amd64/x86_64/}
SUBST_VARS+=	GNU_ARCH

DOCSRC=		${WRKSRC}/doc/docbook/src

PSEUDO_FLAVORS=	no_octave
FLAVOR?=

MULTI_PACKAGES=	-main -c++ -f77
# -tcl

#.if ${FLAVOR:Mno_octave}
#CONFIGURE_ARGS+= -D ENABLE_octave=OFF
#.else
#MULTI_PACKAGES+=-octave
#.endif

myWANTLIB=	m z freetype Xau Xdmcp Xrender X11 Xext SM ICE expat \
		fontconfig pixman-1 png

WANTLIB-main=		${myWANTLIB} c g2c
WANTLIB-c++ =		${myWANTLIB}
WANTLIB-f77+=		${myWANTLIB}
#WANTLIB-octave+=	${myWANTLIB} g2c ncurses readline blas lapack fftw3
#WANTLIB-tcl+=		${myWANTLIB} X11 Xau Xdmcp c

myLIB_DEPENDS=	glib-2.0,gmodule-2.0,gobject-2.0::devel/glib2 \
		pango-1.0,pangocairo-1.0,pangoft2-1.0::devel/pango \
		cairo::graphics/cairo \
		glitz::graphics/glitz \
		${MODGETTEXT_LIB_DEPENDS}

#		ltdl::devel/libtool,-ltdl

LIB_DEPENDS-main=	${myLIB_DEPENDS}
LIB_DEPENDS-c++ =	plplotd,csirocsa::math/plplot,-main \
			${myLIB_DEPENDS}
LIB_DEPENDS-f77=	plplotd,csirocsa::math/plplot,-main \
			${myLIB_DEPENDS}
#LIB_DEPENDS-octave=	plplotd,csirocsa::math/plplot,-main \
#			cruft,octave,octinterp::math/octave \
#			${myLIB_DEPENDS}
#LIB_DEPENDS-tcl=	plplotd,csirocsa::math/plplot,-main \
#			${MODTCL_LIB_DEPENDS} \
#			${myLIB_DEPENDS}

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

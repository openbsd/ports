# $OpenBSD: Makefile,v 1.68 2019/08/22 19:33:42 rsadowski Exp $

COMMENT-main =	advanced 2D and 3D scientific plotting library
COMMENT-c++ =	C++ interface to plplot
COMMENT-fortran =	Fortran 77 interface to plplot

VERSION =	5.15.0
DISTNAME =	plplot-${VERSION}
SHARED_LIBS =	csirocsa	4.0	\
		csironn		0.0	\
		plplot		16.0	\
		plplotcxx	14.0	\
		plplotfortran	1.0	\
		qsastime	0.0

PKGNAME-main =	${DISTNAME}
PKGNAME-c++ =	plplot-c++-${VERSION}
PKGNAME-fortran =	plplot-fortran-${VERSION}

CATEGORIES =	math graphics

HOMEPAGE =	http://plplot.sourceforge.net/

# LGPL
PERMIT_PACKAGE =		Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=plplot/}

COMPILER =		base-clang ports-gcc base-gcc
MODULES =		fortran
MODFORTRAN_COMPILER =	gfortran

BUILD_DEPENDS =	print/ghostscript/gnu-fonts \
		${MODFORTRAN_BUILD_DEPENDS}

myRUN_DEPENDS =	print/ghostscript/gnu-fonts

MODULES +=	devel/cmake

# Until the cmake ninja generator supports fortran
USE_NINJA =		No

CONFIGURE_ARGS =	-D ENABLE_ada=OFF \
			-D ENABLE_cxx=ON \
			-D ENABLE_d=OFF \
			-D ENABLE_fortran=ON \
			-D ENABLE_java=OFF \
			-D ENABLE_lua=OFF \
			-D ENABLE_ocaml=OFF \
			-D ENABLE_octave=OFF \
			-D ENABLE_python=OFF \
			-D ENABLE_qt=OFF \
			-D ENABLE_pyqt4=OFF \
			-D ENABLE_tcl=OFF \
			-D ENABLE_itcl=OFF \
			-D ENABLE_tk=OFF \
			-D ENABLE_itk=OFF \
			-D ENABLE_wxwidgets=OFF

DOCSRC =		${WRKSRC}/doc/docbook/src

MULTI_PACKAGES =	-main -c++ -fortran

myWANTLIB += ICE SM X11 Xext cairo glib-2.0
myWANTLIB += gobject-2.0 m pango-1.0 pangocairo-1.0
myWANTLIB += qhull intl ltdl shp

WANTLIB-main =	${myWANTLIB} c pthread
WANTLIB-c++ =	plplot m ${COMPILER_LIBCXX}
WANTLIB-fortran = plplot m ${MODFORTRAN_WANTLIB}

myLIB_DEPENDS =	devel/glib2 \
		devel/gettext,-runtime \
		devel/pango \
		devel/shapelib \
		graphics/cairo \
		math/qhull \
		devel/libtool,-ltdl

LIB_DEPENDS-main =	${myLIB_DEPENDS}
LIB_DEPENDS-c++ =	math/plplot,-main
LIB_DEPENDS-fortran =	math/plplot,-main \
			${MODFORTRAN_LIB_DEPENDS}

RUN_DEPENDS-main =	${myRUN_DEPENDS}
RUN_DEPENDS-c++ =
RUN_DEPENDS-fortran =

pre-configure:
	@sed -i 's/3plplot/3/g' ${DOCSRC}/*.3plplot
	@cd ${DOCSRC} && for m in *.3plplot; do mv $$m $${m%\.3plplot}.3; done

post-install:
	${INSTALL_MAN} ${DOCSRC}/*.3 ${PREFIX}/man/man3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/plplot/html
	${INSTALL_DATA} ${DOCSRC}/*.html ${PREFIX}/share/doc/plplot/html

.include <bsd.port.mk>

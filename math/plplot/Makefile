# $OpenBSD: Makefile,v 1.48 2014/03/17 23:21:43 sthen Exp $

SHARED_ONLY =	Yes

COMMENT-main =	advanced 2D and 3D scientific plotting library
COMMENT-c++ =	C++ interface to plplot
COMMENT-f77 =	Fortran 77 interface to plplot

VERSION =	5.8.0
DISTNAME =	plplot-${VERSION}
SHARED_LIBS =	csirocsa	3.0	\
		plplotcxxd	12.0	\
		plplotd		13.0	\
		plplotf77cd	11.0	\
		plplotf77d	11.0

PKGNAME-main =	${DISTNAME}
PKGNAME-c++ =	plplot-c++-${VERSION}
PKGNAME-f77 =	plplot-f77-${VERSION}
REVISION-main =	8
REVISION-c++ =	8
REVISION-f77 =	11

CATEGORIES =	math graphics

HOMEPAGE =	http://plplot.sourceforge.net/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=plplot/}

MODULES =	devel/gettext \
		fortran

MODFORTRAN_COMPILER = g77

USE_GROFF =	Yes
BUILD_DEPENDS =	print/ghostscript/gnu-fonts \
		${MODFORTRAN_BUILD_DEPENDS}

myRUN_DEPENDS =	print/ghostscript/gnu-fonts

MODULES +=	devel/cmake

CONFIGURE_STYLE =	cmake

# Until such time as the cmake ninja generator supports fortran
USE_NINJA =		No

CONFIGURE_ARGS =	-D ENABLE_java=OFF \
			-D ENABLE_f77=ON \
			-D ENABLE_f95=OFF \
			-D ENABLE_itcl=OFF \
			-D ENABLE_pdl=OFF \
			-D ENABLE_python=OFF \
			-D PLD_gcw=OFF \
			-D ENABLE_tcl=OFF \
			-D ENABLE_tk=OFF \
			-D ENABLE_wxwidgets=OFF \
			-D ENABLE_gnome2=OFF \
			-D ENABLE_octave=OFF \
			-D PLD_wxwidgets=OFF

DOCSRC =		${WRKSRC}/doc/docbook/src

FLAVOR ?=

MULTI_PACKAGES =	-main -c++ -f77

myWANTLIB += ICE SM X11 Xext cairo fontconfig freetype gd glib-2.0
myWANTLIB += gobject-2.0 jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0
myWANTLIB += png z ${MODGETTEXT_WANTLIB}

WANTLIB-main =	${myWANTLIB} c pthread
WANTLIB-c++ =	${myWANTLIB} csirocsa plplotd stdc++
WANTLIB-f77 +=	${myWANTLIB} csirocsa plplotd ${MODFORTRAN_WANTLIB}

myLIB_DEPENDS =	devel/glib2 \
		devel/pango \
		graphics/cairo \
		graphics/gd \
		${MODGETTEXT_LIB_DEPENDS}

LIB_DEPENDS-main =	${myLIB_DEPENDS}
LIB_DEPENDS-c++ =	math/plplot,-main \
			${myLIB_DEPENDS}
LIB_DEPENDS-f77 =	math/plplot,-main \
			${myLIB_DEPENDS} \
			${MODFORTRAN_LIB_DEPENDS}

RUN_DEPENDS-main =	${MODLIBICONV_RUN_DEPENDS} ${myRUN_DEPENDS}
RUN_DEPENDS-c++ =
RUN_DEPENDS-f77 =

pre-configure:
	@perl -pi -e 's/3plplot/3/g' ${DOCSRC}/*.3plplot
	@cd ${DOCSRC} && for m in *.3plplot; do mv $$m $${m%\.3plplot}.3; done

post-install:
	${INSTALL_MAN} ${DOCSRC}/*.3 ${PREFIX}/man/man3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/plplot/html
	${INSTALL_DATA} ${DOCSRC}/*.html ${PREFIX}/share/doc/plplot/html

.include <bsd.port.mk>

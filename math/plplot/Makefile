# $OpenBSD: Makefile,v 1.36 2010/10/23 15:09:57 steven Exp $

SHARED_ONLY=	Yes

COMMENT-main=	advanced 2D and 3D scientific plotting library
COMMENT-c++ =	C++ interface to plplot
COMMENT-f77=	Fortran 77 interface to plplot

VERSION=	5.8.0
DISTNAME=	plplot-${VERSION}
SHARED_LIBS=	csirocsa	2.0	\
		plplotcxxd	12.0	\
		plplotd		13.0	\
		plplotf77cd	11.0	\
		plplotf77d	11.0

PKGNAME-main=	${DISTNAME}
PKGNAME-c++ =	plplot-c++-${VERSION}
PKGNAME-f77=	plplot-f77-${VERSION}
REVISION-main=	3
REVISION-c++ =	3
REVISION-f77=	6

CATEGORIES=	math graphics

HOMEPAGE=	http://plplot.sourceforge.net/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=plplot/}

MODULES=	devel/gettext \
		fortran

MODFORTRAN_COMPILER = g77

USE_X11=	Yes
USE_LIBTOOL=	Yes
USE_GROFF =	Yes
BUILD_DEPENDS=	::print/ghostscript/gnu-fonts \
		${MODFORTRAN_BUILD_DEPENDS}

myRUN_DEPENDS=	::print/ghostscript/gnu-fonts

MODULES+=	devel/cmake

CONFIGURE_STYLE=cmake

CONFIGURE_ARGS=	-D ENABLE_java=OFF \
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

DOCSRC=		${WRKSRC}/doc/docbook/src

FLAVOR?=

MULTI_PACKAGES=	-main -c++ -f77

myWANTLIB=	ICE SM X11 Xau Xdmcp Xext Xrender cairo expat \
		fontconfig freetype gd glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 gthread-2.0 jpeg m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png pthread-stubs xcb xcb-render \
		xcb-render-util z

WANTLIB-main=	${myWANTLIB} c pthread
WANTLIB-c++ =	${myWANTLIB} csirocsa plplotd stdc++
WANTLIB-f77+=	${myWANTLIB} csirocsa plplotd ${MODFORTRAN_WANTLIB}

myLIB_DEPENDS=	::devel/glib2 \
		::devel/pango \
		::graphics/cairo \
		::graphics/gd \
		::graphics/glitz \
		${MODGETTEXT_LIB_DEPENDS}

LIB_DEPENDS-main=	${myLIB_DEPENDS}
LIB_DEPENDS-c++ =	::math/plplot,-main \
			${myLIB_DEPENDS}
LIB_DEPENDS-f77=	::math/plplot,-main \
			${myLIB_DEPENDS} \
			${MODFORTRAN_LIB_DEPENDS}

RUN_DEPENDS-main=	${MODLIBICONV_RUN_DEPENDS} ${myRUN_DEPENDS}
RUN_DEPENDS-c++ =
RUN_DEPENDS-f77=

pre-configure:
	@perl -pi -e 's/3plplot/3/g' ${DOCSRC}/*.3plplot
	@cd ${DOCSRC} && for m in *.3plplot; do mv $$m $${m%\.3plplot}.3; done

post-install:
	${INSTALL_MAN} ${DOCSRC}/*.3 ${PREFIX}/man/man3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/plplot/html
	${INSTALL_DATA} ${DOCSRC}/*.html ${PREFIX}/share/doc/plplot/html

.include <bsd.port.mk>

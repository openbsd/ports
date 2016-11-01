# $OpenBSD: Makefile,v 1.88 2016/11/01 16:55:13 feinerer Exp $

COMMENT=	powerful math/statistics/graphics language
DISTNAME=	R-3.3.2

SO_VERSION=	32.0
.for _lib in R Rblas Rlapack
SHARED_LIBS +=	${_lib} ${SO_VERSION}
.endfor

CATEGORIES=	math
HOMEPAGE=	https://www.r-project.org/

MAINTAINER=	Ingo Feinerer <feinerer@logic.at>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xmu Xss Xt bz2 c cairo crypto curl
WANTLIB += glib-2.0 gobject-2.0 iconv icui18n icuuc idn intl jpeg
WANTLIB += lzma m ncurses nghttp2 pango-1.0 pangocairo-1.0 pcre
WANTLIB += png readline ssl tiff z ${MODTK_WANTLIB}

MASTER_SITES=	https://cran.r-project.org/src/base/R-3/ \
		http://cran.at.r-project.org/src/base/R-3/ \
		http://cran.br.r-project.org/src/base/R-3/ \
		http://cran.ch.r-project.org/src/base/R-3/ \
		http://cran.dk.r-project.org/src/base/R-3/ \
		http://cran.es.r-project.org/src/base/R-3/ \
		http://cran.stat.ucla.edu/src/base/R-3/ \
		http://cran.uk.r-project.org/src/base/R-3/ \
		http://cran.us.r-project.org/src/base/R-3/ \
		http://probability.ca/cran/src/base/R-3/

MODULES=	fortran \
		x11/tk

MODFORTRAN_COMPILER = gfortran

BUILD_DEPENDS=	${MODFORTRAN_BUILD_DEPENDS} \
		archivers/gtar \
		archivers/unzip \
		archivers/zip \
		devel/xdg-utils \
		print/texinfo \
		print/texlive/base>=2014p1

LIB_DEPENDS=	${MODTK_LIB_DEPENDS} \
		archivers/bzip2 \
		archivers/xz \
		devel/glib2 \
		devel/libidn \
		devel/pango \
		graphics/cairo \
		graphics/jpeg \
		graphics/png \
		graphics/tiff \
		net/curl \
		textproc/icu4c

RUN_DEPENDS=	${MODFORTRAN_BUILD_DEPENDS} \
		archivers/gtar \
		archivers/unzip \
		archivers/zip \
		devel/gmake \
		devel/xdg-utils \
		print/texinfo \
		print/texlive/base>=2014p1

CONFIGURE_STYLE=gnu

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/tools

CONFIGURE_ARGS= --disable-java \
		--enable-BLAS-shlib \
		--enable-R-shlib \
		--with-tcl-config=${MODTCL_CONFIG} \
		--with-tk-config=${MODTK_CONFIG}

CONFIGURE_ENV=	F77="${MODFORTRAN_COMPILER}" \
		FC="${MODFORTRAN_COMPILER}" \
		FFLAGS="${FFLAGS}" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -Wl,-R${LOCALBASE}/lib/R/lib" \
		LIBnn=lib \
		MAKEINFO="${LOCALBASE}/bin/gtexi2any" \
		R_DYLIB_VERSION=${SO_VERSION} \
		TEXI2DVI="${LOCALBASE}/bin/gtexi2dvi" \
		rdocdir="${PREFIX}/share/doc/R"

SEPARATE_BUILD=	Yes

USE_GMAKE=	Yes

TEXMFLOCAL=	${PREFIX}/share/texmf-local

post-install:
	mv ${WRKINST}/${LOCALBASE}/lib/R/share/texmf ${TEXMFLOCAL}
	sed -i 's:^R_HOME_DIR=.*:R_HOME_DIR=${TRUEPREFIX}/lib/R:' \
		${PREFIX}/bin/R

.include <bsd.port.mk>

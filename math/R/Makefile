# $OpenBSD: Makefile,v 1.73 2015/06/26 18:54:47 feinerer Exp $

SHARED_ONLY=	Yes

COMMENT=	powerful math/statistics/graphics language
DISTNAME=	R-3.2.1
REVISION=	0

SHARED_LIBS=	R	3.1
SHARED_LIBS+=	Rlapack	31.2 	# 31.2
SHARED_LIBS+=	Rblas	31.2 	# 31.2

CATEGORIES=	math
HOMEPAGE=	http://www.r-project.org/

MAINTAINER=	Ingo Feinerer <feinerer@logic.at>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xext Xmu Xss Xt bz2 c crypto curl \
		cairo readline fontconfig freetype glib-2.0 \
		gobject-2.0 icui18n icuuc idn jpeg lzma m \
		ncurses pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre png pthread ssl tiff z \
		${MODTK_WANTLIB}

MASTER_SITES=	http://cran.r-project.org/src/base/R-3/ \
		ftp://cran.r-project.org/pub/R/src/base/R-3/ \
		ftp://ftp.u-aizu.ac.jp/pub/lang/R/CRAN/src/base/R-3/ \
		http://cran.at.r-project.org/src/base/R-3/ \
		http://cran.br.r-project.org/src/base/R-3/ \
		http://cran.ch.r-project.org/src/base/R-3/ \
		http://cran.dk.r-project.org/src/base/R-3/ \
		http://cran.es.r-project.org/src/base/R-3/ \
		http://cran.stat.ucla.edu/src/base/R-3/ \
		http://cran.uk.r-project.org/src/base/R-3/ \
		http://cran.us.r-project.org/src/base/R-3/ \
		http://lib.stat.cmu.edu/R/CRAN/src/base/R-3/ \
		http://probability.ca/cran/src/base/R-3/

MODULES=	gcc4 \
		devel/gettext \
		x11/tk

MODGCC4_ARCHS=	*
MODGCC4_LANGS=	fortran

BUILD_DEPENDS=	archivers/gtar \
		archivers/unzip \
		archivers/zip \
		devel/xdg-utils
LIB_DEPENDS=	${MODFORTRAN_LIB_DEPENDS} \
		${MODTK_LIB_DEPENDS} \
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

RUN_DEPENDS=	archivers/gtar \
		archivers/unzip \
		archivers/zip \
		devel/gmake \
		devel/xdg-utils \
		print/texlive/base

CONFIGURE_STYLE=gnu

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/tools

CONFIGURE_ARGS= ${CONFIGURE_SHARED} \
		--enable-BLAS-shlib \
		--enable-R-shlib \
		--enable-prebuilt-html \
		--with-tcl-config=${MODTCL_CONFIG} \
		--with-tk-config=${MODTK_CONFIG}

CONFIGURE_ENV=	FFLAGS="${FFLAGS}" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -Wl,-R${LOCALBASE}/lib/R/lib" \
		LIBnn=lib \
		ac_cv_path_PDFLATEX="" \
		rdocdir="${PREFIX}/share/doc/R"

MAKE_FLAGS=	DYLIB_EXT=".so.${LIBR_VERSION}" \
		Rblas_la="libRblas.so.${LIBRblas_VERSION}" \
		Rlapack_la="libRlapack.so.$(LIBRlapack_VERSION)"

SEPARATE_BUILD=	Yes

USE_GMAKE=	Yes

TEXMFLOCAL=	${PREFIX}/share/texmf-local

post-install:
	mv ${WRKINST}/${LOCALBASE}/lib/R/share/texmf ${TEXMFLOCAL}
	@perl -i -pe 's:^R_HOME_DIR=.*:R_HOME_DIR=${TRUEPREFIX}/lib/R:' \
		${PREFIX}/bin/R

.include <bsd.port.mk>

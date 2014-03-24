# $OpenBSD: Makefile,v 1.61 2014/03/24 09:08:46 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	powerful math/statistics/graphics language
DISTNAME=	R-3.0.3

SHARED_LIBS=	R	2.0  \
		Rlapack	31.1 \
		Rblas	31.0

CATEGORIES=	math
HOMEPAGE=	http://www.r-project.org/

MAINTAINER=	Rafael Sadowski <rafael@sizeofvoid.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xext Xmu Xss Xt bz2 c cairo \
		ereadline fontconfig freetype glib-2.0 \
		gobject-2.0 icui18n icuuc jpeg lzma m \
		ncurses pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre png pthread tiff z \
		${MODFORTRAN_WANTLIB} ${MODTK_WANTLIB}

MASTER_SITES=	http://cran.r-project.org/src/base/R-3/ \
		ftp://cran.r-project.org/pub/R/src/base/R-3/ \
		http://cran.at.r-project.org/src/base/R-3/ \
		http://cran.au.r-project.org/src/base/R-3/ \
		http://cran.br.r-project.org/src/base/R-3/ \
		http://cran.ch.r-project.org/src/base/R-3/ \
		http://cran.es.r-project.org/src/base/R-3/ \
		http://cran.dk.r-project.org/src/base/R-3/ \
		http://cran.hu.r-project.org/src/base/R-3/ \
		http://cran.uk.r-project.org/src/base/R-3/ \
		http://cran.us.r-project.org/src/base/R-3/ \
		http://cran.za.r-project.org/src/base/R-3/ \
		ftp://ftp.u-aizu.ac.jp/pub/lang/R/CRAN/src/base/R-3/ \
		http://lib.stat.cmu.edu/R/CRAN/src/base/R-3/ \
		http://cran.stat.ucla.edu/src/base/R-3/ \
		http://probability.ca/cran/src/base/R-3/

MODULES=	fortran devel/gettext x11/tk
MODFORTRAN_COMPILER= gfortran

BUILD_DEPENDS=	${MODFORTRAN_BUILD_DEPENDS} \
		archivers/gtar \
		archivers/unzip \
		archivers/zip \
		devel/xdg-utils
LIB_DEPENDS=	${MODFORTRAN_LIB_DEPENDS} \
		${MODTK_LIB_DEPENDS} \
		archivers/bzip2 \
		archivers/xz \
		devel/glib2 \
		devel/pango \
		devel/readline \
		graphics/cairo \
		graphics/jpeg \
		graphics/png \
		graphics/tiff \
		textproc/icu4c
RUN_DEPENDS=	archivers/gtar \
		archivers/unzip \
		archivers/zip \
		devel/gmake \
		devel/xdg-utils

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/tools
CONFIGURE_ARGS= ${CONFIGURE_SHARED} \
		--enable-BLAS-shlib \
		--enable-R-shlib \
		--enable-prebuilt-html \
		--with-ICU \
		--with-cairo \
		--with-jpeglib \
		--with-libpng \
		--with-libtiff \
		--with-readline \
		--with-system-bzlib \
		--with-system-pcre \
		--with-system-xz \
		--with-tcltk \
		--with-tcl-config=${MODTCL_CONFIG} \
		--with-tk-config=${MODTK_CONFIG}

CONFIGURE_ENV=	FFLAGS="${FFLAGS}" \
		CPPFLAGS="-I${LOCALBASE}/include/ereadline -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -Wl,-R${LOCALBASE}/lib/R/lib" \
		ac_cv_path_TAR="${LOCALBASE}/bin/gtar"

MAKE_FLAGS=	INSTALL_DATA='install -c -m 644' \
		INSTALL_PROGRAM='install -c -s -m 555' \
		INSTALL_SCRIPT='install -c -m 555' \
		LIBR_VERSION=${LIBR_VERSION} \
		LIBRlapack_VERSION=${LIBRlapack_VERSION} \
		LIBRblas_VERSION=${LIBRblas_VERSION}

FAKE_FLAGS=	PREFIX=${PREFIX} \
		INSTALL="${INSTALL_DATA}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_SCRIPT="${INSTALL_SCRIPT}"

SEPARATE_BUILD=	Yes

USE_GMAKE=	Yes

TEXMFLOCAL=	${PREFIX}/share/texmf-local

post-install:
	mv ${WRKINST}/${LOCALBASE}/lib/R/share/texmf ${TEXMFLOCAL}
	rm -rf ${WRKINST}/${LOCALBASE}/lib/R/share/texmf
	@perl -i -pe 's:^R_HOME_DIR=.*:R_HOME_DIR=${TRUEPREFIX}/lib/R:' \
		${PREFIX}/bin/R

.include <bsd.port.mk>

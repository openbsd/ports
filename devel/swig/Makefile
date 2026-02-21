COMMENT =	simplified wrapper and interface generator

SUBST_VARS =	VERSION
VERSION =	4.4.1

DISTNAME =	swig-${VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://www.swig.org/

# BSD
PERMIT_PACKAGE =Yes

WANTLIB =	c m pcre2-8 ${COMPILER_LIBCXX} z

COMPILER =	base-clang ports-gcc base-gcc

SITES =		${SITE_SOURCEFORGE:=swig/}

MODULES =	lang/python \
		lang/tcl

MODPY_RUNDEP =	No
MODTCL_VERSION=	8.6

BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS} \
		lang/guile

LIB_DEPENDS =	devel/pcre2

# don't run update-plist after make test
TEST_DEPENDS =	devel/boost

TEST_FLAGS =	TCLSH=${MODTCL_BIN}

# https://github.com/swig/swig/issues/3296
TEST_FLAGS +=	ENGINE=_

USE_GMAKE =	Yes
CONFIGURE_STYLE = gnu
# We can't configure --with-ruby because of a dependency circle,
# swig -> ruby (yjit) -> rust -> llvm -> swig.
CONFIGURE_ARGS += --with-tclincl=${MODTCL_INCDIR} \
		 --with-tcllib=${MODTCL_LIBDIR} \
		 --with-guile-config=${LOCALBASE}/bin/guile-config \
		 --with-python=${MODPY_BIN} \
		 --without-android \
		 --without-csharp \
		 --without-d \
		 --without-go \
		 --without-java \
		 --without-javascript \
		 --without-lua \
		 --without-ocaml \
		 --without-octave \
		 --without-php \
		 --without-r \
		 --without-ruby \
		 --without-scilab

MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/Tools/config

ALL_TARGET =	swig

SWIG_DOCS =	${PREFIX}/share/doc/swig

PORTHOME =	${WRKDIR}

post-install:
	${INSTALL_DATA_DIR} ${SWIG_DOCS}
	cp -R ${WRKSRC}/Doc/* ${SWIG_DOCS}

.include <bsd.port.mk>

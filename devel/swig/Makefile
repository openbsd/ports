COMMENT =	simplified wrapper and interface generator

# 4.5 drops the Python 2 API, which causes issues with at least py-pivy 0.6.11
# (https://github.com/coin3d/pivy/issues/150)
VERSION =	4.4.1
DISTNAME =	swig-${VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://www.swig.org/

# BSD
PERMIT_PACKAGE =Yes

WANTLIB =	c m pcre2-8 ${COMPILER_LIBCXX} z

COMPILER =	base-clang ports-gcc base-gcc

SITES =		${SITE_SOURCEFORGE:=swig/}

CONFIGURE_STYLE = gnu
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/Tools/config
ALL_TARGET =	swig
USE_GMAKE =	Yes

MODULES =	lang/python \
		lang/tcl

MODPY_RUNDEP =	No
MODTCL_VERSION=	8.6

BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS} \
		lang/guile

LIB_DEPENDS =	devel/pcre2

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

SUBST_VARS =	VERSION

# some tests fail in guile_cpp aborting the test run
TEST_DEPENDS =	devel/boost
TEST_FLAGS =	TCLSH=${MODTCL_BIN}
PORTHOME =	${WRKDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/swig
	cp -R ${WRKSRC}/Doc/* ${PREFIX}/share/doc/swig

post-test:
	@echo "*** don't run update-plist after make test"

.include <bsd.port.mk>

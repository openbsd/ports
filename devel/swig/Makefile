COMMENT =	simplified wrapper and interface generator

SUBST_VARS =	VERSION
VERSION =	4.1.0

DISTNAME =	swig-${VERSION}
CATEGORIES =	devel

REVISION =	0

HOMEPAGE =	http://www.swig.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	c m pcre2-8 ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

SITES =		${SITE_SOURCEFORGE:=swig/}

MODULES =	lang/python \
		lang/ruby \
		lang/tcl

MODRUBY_RUNDEP = No

MODPY_RUNDEP =	No
MODPHP_BUILDDEP =	Yes

BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS} \
		lang/guile

LIB_DEPENDS =	devel/pcre2

# dont run update-plist after make test
TEST_DEPENDS =	lang/go \
		lang/node \
		devel/boost

USE_GMAKE =	Yes
CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += --with-tclincl=${MODTCL_INCDIR} \
		 --with-tcllib=${MODTCL_LIBDIR} \
		 --with-guilelib=${LOCALBASE}/lib \
		 --with-php=${MODPHP_BIN} \
		 --with-python=${MODPY_BIN} \
		 --with-ruby=${RUBY} \
		 --without-mzscheme \
		 --without-ocaml
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/Tools/config

ALL_TARGET =	swig

SWIG_EXAMPLES =	${PREFIX}/share/examples/swig
SWIG_DOCS =	${PREFIX}/share/doc/swig

PORTHOME =	${WRKDIR}

pre-test:
	ln -sf ${MODTCL_BIN} ${WRKDIR}/bin/tclsh

post-install:
	${INSTALL_DATA_DIR} ${SWIG_EXAMPLES}
	${INSTALL_DATA_DIR} ${SWIG_DOCS}
	cp -R ${WRKSRC}/Examples/* ${SWIG_EXAMPLES}
	cp -R ${WRKSRC}/Doc/* ${SWIG_DOCS}
	chmod 0644 ${SWIG_DOCS}/Manual/CCache.html

.include <bsd.port.mk>

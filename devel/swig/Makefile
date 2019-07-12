# $OpenBSD: Makefile,v 1.70 2019/07/12 20:46:02 sthen Exp $

COMMENT =	simplified wrapper and interface generator

SUBST_VARS =	VERSION
VERSION =	3.0.12

DISTNAME =	swig-${VERSION}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	http://www.swig.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	c m pcre ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=swig/}

MODULES =	lang/python \
		lang/ruby \
		lang/tcl
MODRUBY_RUNDEP = No
MODPY_RUNDEP =	No
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS} \
		lang/guile
LIB_DEPENDS =	devel/pcre

USE_GMAKE =	Yes
CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += --with-tclincl=${MODTCL_INCDIR} \
		 --with-tcllib=${MODTCL_LIBDIR} \
		 --with-guilelib=${LOCALBASE}/lib \
		 --with-python=${MODPY_BIN} \
		 --with-ruby=${RUBY} \
		 --without-mzscheme \
		 --without-php4 \
		 --without-ocaml
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/Tools/config

ALL_TARGET =	swig

SWIG_EXAMPLES =	${PREFIX}/share/examples/swig
SWIG_DOCS =	${PREFIX}/share/doc/swig

post-install:
	${INSTALL_DATA_DIR} ${SWIG_EXAMPLES}
	${INSTALL_DATA_DIR} ${SWIG_DOCS}
	cp -R ${WRKSRC}/Examples/* ${SWIG_EXAMPLES}
	cp -R ${WRKSRC}/Doc/* ${SWIG_DOCS}
	chmod 0644 ${SWIG_DOCS}/Manual/CCache.html

.include <bsd.port.mk>

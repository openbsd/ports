# $OpenBSD: Makefile,v 1.58 2014/01/20 19:14:50 fgsch Exp $

COMMENT =	simplified wrapper and interface generator

SUBST_VARS =	VERSION
VERSION =	2.0.11
REVISION =	0

DISTNAME =	swig-${VERSION}
CATEGORIES =	devel

HOMEPAGE =	http://www.swig.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m pcre stdc++ z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=swig/}

MODULES =	lang/python \
		lang/ruby \
		lang/tcl
MODRUBY_RUNDEP = No
MODPY_RUNDEP =	No
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS} \
		lang/guile
LIB_DEPENDS =	devel/boost \
		devel/pcre

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

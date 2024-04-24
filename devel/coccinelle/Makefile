BROKEN-sparc64 ="/usr/bin/ld: skipping incompatible pyml-current/libpyml_stubs.a when searching for -lpyml_stubs" \
		"/usr/bin/ld: cannot find -lpyml_stubs"
# ocamlfind: Not supported in your configuration: ocamlopt
ONLY_FOR_ARCHS = ${OCAML_NATIVE_ARCHS}

COMMENT =	program matching and transformation engine

# if updating, check for any additional use of diff/grep which
# may need to be switched to gdiff/ggrep

GH_ACCOUNT =	coccinelle
GH_PROJECT =	coccinelle
GH_TAGNAME =	1.1.1
REVISION =	4

CATEGORIES =	devel

HOMEPAGE =	https://coccinelle.gitlabpages.inria.fr/website/

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += c m pcre

MODULES =	lang/ocaml \
		lang/python

BUILD_DEPENDS =	${RUN_DEPENDS} \
		print/texlive/base \
		sysutils/findlib \
		textproc/hevea \
		textproc/latexmk

LIB_DEPENDS =	devel/pcre

RUN_DEPENDS =	sysutils/ggrep \
		textproc/gdiff

# asks questions at the end if it does better than expected
TEST_IS_INTERACTIVE = Yes

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_ENV =		MAKE_PROGRAM=${MAKE_PROGRAM}
CONFIGURE_ENV +=	ac_cv_path_PATCH="patch -z.ccorig"
CONFIGURE_ARGS =	--with-python=${MODPY_BIN} \
			--libdir=${PREFIX}/lib \
			--enable-ocaml

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
CONFIGURE_ARGS +=	--enable-opt
.else
CONFIGURE_ARGS +=	--disable-opt
.endif

USE_GMAKE =	Yes
PORTHOME =	${WRKDIR}

ALL_TARGET =	all-release

TEST_TARGET =	test
TEST_DEPENDS =	${FULLPKGPATH}
TEST_ENV =	COCCINELLE_HOME=${TRUEPREFIX}/lib/coccinelle

pre-configure:
	perl -pi -e s,/usr/local,${TRUEPREFIX},g ${WRKSRC}/scripts/spatch*

post-build:
	cd ${WRKSRC}/docs/manual; \
		${MAKE_PROGRAM} WEBDOCS=${PREFIX}/share/doc/coccinelle html

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/share/coccinelle/python/coccilib
	mv ${PREFIX}/lib/coccinelle/*.so \
		${PREFIX}/lib/ocaml/stublibs/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coccinelle
	${INSTALL_DATA} \
		${WRKSRC}/docs/manual/*.{html,css,svg} \
		${PREFIX}/share/doc/coccinelle/

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.41 2020/06/09 17:34:13 chrisz Exp $

BROKEN-sparc64 =	"/usr/bin/ld: skipping incompatible pyml-current/libpyml_stubs.a when searching for -lpyml_stubs" \
			"/usr/bin/ld: cannot find -lpyml_stubs"

COMMENT =	program matching and transformation engine

# if updating, check for any additional use of diff/grep which
# may need to be switched to gdiff/ggrep
DISTNAME =	coccinelle-1.0.6
REVISION =	2
EXTRACT_SUFX =	.tgz

CATEGORIES =	devel

HOMEPAGE =	http://coccinelle.lip6.fr/

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += c curses m pthread pcre ${MODPY_WANTLIB}

MASTER_SITES = ${HOMEPAGE}distrib/

MODULES =		lang/ocaml \
			lang/python

BUILD_DEPENDS =		${RUN_DEPENDS} \
			print/texlive/base \
			textproc/hevea \
			devel/ocaml-menhir \
			math/ocaml-num \
			textproc/latexmk
RUN_DEPENDS =		devel/ocaml-parmap \
			devel/ocaml-pcre \
			sysutils/findlib \
			sysutils/ggrep \
			textproc/gdiff

# asks questions at the end if it does better than expected
TEST_IS_INTERACTIVE = Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		MAKE_PROGRAM=${MAKE_PROGRAM}
# The PKG_CHECK_MODULES autoconf macro doesn't have a way to use .private
CONFIGURE_ENV +=	PYTHON_LIBS="`pkg-config --static --libs python`" \
			ac_cv_path_PATCH="patch -z.ccorig"
CONFIGURE_ARGS =	--with-python=${MODPY_BIN}

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
CONFIGURE_ARGS +=	--enable-opt
.else
CONFIGURE_ARGS +=	--disable-opt
.endif

USE_GMAKE =	Yes
PORTHOME =	${WRKDIR}

ALL_TARGET =		all-release

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
		${WRKSRC}/docs/manual/*.{html,css,gif} \
		${PREFIX}/share/doc/coccinelle/

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.27 2015/09/18 20:36:35 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	program matching and transformation engine

# if updating, check for any additional use of diff/grep which
# may need to be switched to gdiff/ggrep
DISTNAME =	coccinelle-1.0.2
REVISION =	0
EXTRACT_SUFX =	.tgz

CATEGORIES =	devel

HOMEPAGE =	http://coccinelle.lip6.fr/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB += c curses m pthread util pcre ${MODPY_WANTLIB}

MASTER_SITES = ${HOMEPAGE}distrib/

MODULES =		lang/ocaml \
			lang/python

BUILD_DEPENDS =		${RUN_DEPENDS} \
			lang/ocaml-camlp4 \
			print/texlive/base \
			print/texlive/texmf,-full
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
CONFIGURE_ARGS +=	--disable-menhirLib # version in ports is too new

USE_GMAKE =	Yes
PORTHOME =	${WRKDIR}

TEST_TARGET =	test
TEST_DEPENDS =	${FULLPKGPATH}

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native_dynlink}
# "world" builds both: opt AND byte
ALL_TARGET =		world
.else
# "all-release" builds either opt OR byte
ALL_TARGET =		all-release
.endif

pre-configure:
	perl -pi -e s,/usr/local,${TRUEPREFIX},g ${WRKSRC}/scripts/spatch*

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/share/coccinelle/python/coccilib
	mv ${PREFIX}/lib/coccinelle/dllpycaml_stubs.so \
		${PREFIX}/lib/ocaml/stublibs/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coccinelle
	cd ${WRKSRC}/docs/manual; \
		${MAKE_PROGRAM} WEBDOCS=${PREFIX}/share/doc/coccinelle install

.include <bsd.port.mk>

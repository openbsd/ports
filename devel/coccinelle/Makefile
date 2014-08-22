# $OpenBSD: Makefile,v 1.23 2014/08/22 22:49:07 kili Exp $

SHARED_ONLY =	Yes

COMMENT =	program matching and transformation engine

# if updating, check for any additional use of diff/grep which
# may need to be switched to gdiff/ggrep
DISTNAME =	coccinelle-1.0.0-rc15
REVISION =	3
PKGNAME =	${DISTNAME:S/-rc/rc/}
EXTRACT_SUFX =	.tgz

CATEGORIES =	devel

HOMEPAGE =	http://coccinelle.lip6.fr/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB += c curses m pthread util pcre ${MODPY_WANTLIB}

MASTER_SITES = ${HOMEPAGE}distrib/

MODULES =		lang/ocaml \
			lang/python

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ocaml-pcre \
			sysutils/findlib \
			sysutils/ggrep \
			textproc/gdiff
TEST_DEPENDS =	${FULLPKGPATH}

# asks questions at the end if it does better than expected
TEST_IS_INTERACTIVE = Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		MAKE_PROGRAM=${MAKE_PROGRAM}
# The PKG_CHECK_MODULES autoconf macro doesn't have a way to use .private
CONFIGURE_ENV +=	PYTHON_LIBS="`pkg-config --static --libs python`"
CONFIGURE_ARGS =	--with-python=${MODPY_BIN}

USE_GMAKE =		Yes

TEST_TARGET =	test

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native_dynlink}
# word builds both: opt AND byte
ALL_TARGET =		world
.else
# all-release builds either opt OR byte
ALL_TARGET =		all-release
.endif

pre-configure:
	perl -pi -e s,/usr/local,${TRUEPREFIX},g ${WRKSRC}/scripts/spatch*

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/share/coccinelle/python/coccilib
	mv \
		${PREFIX}/share/coccinelle/dllpycaml_stubs.so \
		${PREFIX}/lib/ocaml/stublibs/

.include <bsd.port.mk>

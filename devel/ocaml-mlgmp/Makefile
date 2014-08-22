# $OpenBSD: Makefile,v 1.9 2014/08/22 22:21:54 kili Exp $

COMMENT =		GMP bindings for OCaml

V =			0.13
REVISION =		5
DISTNAME =		mlgmp-${V}
PKGNAME =		ocaml-mlgmp-${V}

CATEGORIES =		devel math
HOMEPAGE =		http://caml.inria.fr/cgi-bin/hump.en.cgi?contrib=278
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://theunixzoo.co.uk/files/

MODULES =		lang/ocaml
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/gmp devel/mpfr

USE_GMAKE =		Yes

# overide their site specific include/lib paths
MAKE_FLAGS += GMP_LIBDIR=${LOCALBASE}/lib
MAKE_FLAGS += GMP_INCLUDES=-I${LOCALBASE}/include
MAKE_FLAGS += CFLAGS_MISC="${CFLAGS} -fPIC"

# build does not support just bytecode, but we can
# deal with this my calling certain make targets
LIBS_NATIVE =	gmp.a gmp.cmxa
LIBS_OTHER =	libmlgmp.a gmp.cma gmp.cmi

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
MAKE_FLAGS +=	LIBS="${LIBS_OTHER} ${LIBS_NATIVE}"
MAKE_FLAGS +=	TESTS="test_suite test_suite.opt"
MAKE_FLAGS +=	TESTS_RUN="tests-nonative tests-native"
.else
MAKE_FLAGS +=	LIBS="${LIBS_OTHER}"
MAKE_FLAGS +=	TESTS="test_suite"
MAKE_FLAGS +=	TESTS_RUN="tests-nonative"
.endif

TEST_TARGET =	tests

# make dependencies are screwed up in the release tarball
pre-build:
	cd ${WRKBUILD} && ${MAKE_PROGRAM} clean

post-install:
	${SUBST_PROGRAM} ${FILESDIR}/META ${PREFIX}/lib/ocaml/gmp/META
	chmod 644 ${PREFIX}/lib/ocaml/gmp/gmp.mli

.include <bsd.port.mk>

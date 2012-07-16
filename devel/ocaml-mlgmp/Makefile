# $OpenBSD: Makefile,v 1.1.1.1 2012/07/16 15:51:33 edd Exp $

COMMENT =		GMP bindings for OCaml

V =			0.13
DISTNAME =		mlgmp-${V}
PKGNAME =		ocaml-mlgmp-${V}

CATEGORIES =		devel math
HOMEPAGE =		http://caml.inria.fr/cgi-bin/hump.en.cgi?contrib=278
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://theunixzoo.co.uk/files/

MODULES =		lang/ocaml
BUILD_DEPENDS =		devel/gmp devel/mpfr
RUN_DEPENDS =		${BUILD_DEPENDS}

USE_GMAKE =		Yes

# overide their site specific include/lib paths
MAKE_FLAGS += GMP_LIBDIR=${LOCALBASE}/lib
MAKE_FLAGS += GMP_INCLUDES=-I${LOCALBASE}/include
MAKE_FLAGS += CFLAGS_MISC="${CFLAGS}"

# build does not support just bytecode, but we can
# deal with this my calling certain make targets
LIBS_NATIVE =	gmp.a gmp.cmxa
LIBS_OTHER =	libmlgmp.a gmp.cma gmp.cmi
MAKE_FLAGS +=	LIBS="${LIBS_OTHER} ${MODOCAML_NATIVE:L:S/yes/${LIBS_NATIVE}/:S/no//}"
MAKE_FLAGS +=	TESTS="test_suite ${MODOCAML_NATIVE:L:S/yes/test_suite.opt/:S/no//}"
MAKE_FLAGS +=	TESTS_RUN="tests-nonative ${MODOCAML_NATIVE:L:S/yes/tests-native/:S/no//}"

REGRESS_TARGET =	tests

# make dependencies are screwed up in the release tarball
pre-build:
	cd ${WRKBUILD} && ${MAKE_PROGRAM} clean

.include <bsd.port.mk>

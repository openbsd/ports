# $OpenBSD: Makefile,v 1.14 2019/06/05 05:44:54 rpointel Exp $

COMMENT =	Z3 theorem prover

VERSION =	4.8.5
DISTNAME =	Z3-${VERSION}
PKGNAME =	${DISTNAME:L}

GH_ACCOUNT =	Z3Prover
GH_PROJECT =	z3

SHARED_LIBS =	z3			2.0 # 4.8

CATEGORIES =	math

WANTLIB +=	c m pthread ${COMPILER_LIBCXX}

# MIT
PERMIT_PACKAGE_CDROM =	Yes

# c++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

CONFIGURE_ARGS +=	-DENABLE_EXAMPLE_TARGETS=ON \
			-DINCLUDE_GIT_HASH=OFF \
			-DINCLUDE_GIT_DESCRIBE=OFF \
			-DBUILD_PYTHON_BINDINGS=ON \
			-DUSE_LIB_GMP=OFF

WRKDIST =	${WRKDIR}/z3-${DISTNAME}

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/mk_util.py

.include <bsd.port.mk>

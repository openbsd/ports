# $OpenBSD: Makefile,v 1.11 2019/03/03 09:16:17 rsadowski Exp $

COMMENT =	Z3 theorem prover

VERSION =	4.8.4
DISTNAME =	z3-${VERSION}

GH_ACCOUNT =	Z3Prover
GH_PROJECT =	z3

SHARED_LIBS =	z3			1.0

CATEGORIES =	math

WANTLIB +=	c m pthread ${COMPILER_LIBCXX}

# MIT
PERMIT_PACKAGE_CDROM =	Yes

# c++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

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

# $OpenBSD: Makefile,v 1.15 2019/07/12 20:46:02 sthen Exp $

COMMENT=	decision procedure for bit-vectors and arrays

GH_ACCOUNT=	stp
GH_PROJECT=	stp
GH_TAGNAME=	stp-2.2.0
DISTNAME=	stp-2.2.0
REVISION=	1

SHARED_LIBS +=  stp                       0.0 # 2.2

CATEGORIES=	devel

HOMEPAGE=	https://stp.github.io/

# MIT license
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_program_options-mt c m minisat

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake \
		lang/python

MODPY_RUNDEP=	No
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=	devel/bison
LIB_DEPENDS=	devel/boost \
		math/minisat

# force-disable in case cryptominisat is imported.
CONFIGURE_ARGS=	-DNOCRYPTOMINISAT:BOOL=ON

# tests depend on llvm lit
NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/stp
	${INSTALL_DATA} ${WRKSRC}/papers/*.pdf ${PREFIX}/share/doc/stp
	${MODPY_BIN} -m compileall ${WRKINST}/${MODPY_SITEPKG}
	find ${PREFIX}/bin -name 'stp*' -ls
	# stp-X.Y.Z ends up as ${FULLPKGNAME} in PLIST
	if [ -L ${PREFIX}/bin/stp ]; then \
	    rm ${PREFIX}/bin/stp; \
	    mv ${PREFIX}/bin/stp-* ${PREFIX}/bin/stp; \
	fi

.include <bsd.port.mk>

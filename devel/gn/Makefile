BROKEN-sparc64= Doesn't support sparc64 as an architecture

COMMENT=	meta build framework for ninja
DPB_PROPERTIES=	parallel

CATEGORIES =	devel

DATE =		20230419
VERSION =	0.0.${DATE}
DISTNAME =	gn-${DATE}
PKGNAME =	gn-${VERSION}
REVISION =	0

# gn.googlesource.com does not provide stable snapshots
SITES =		https://codeberg.org/vlkrs/gn/archive/

HOMEPAGE =	https://gn.googlesource.com/gn/

# BSD 3-Clause
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc
CONFIGURE_ARGS +=	--platform openbsd
CONFIGURE_ENV +=	GN_VERSION=${DATE}
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${MODPY_BIN} build/gen.py

MODULES +=	lang/python

BUILD_DEPENDS =	devel/ninja
RUN_DEPENDS =	devel/ninja

DOCDIR =	${PREFIX}/share/doc/gn
WRKDIST =	${WRKDIR}/gn
WANTLIB += ${COMPILER_LIBCXX} c m

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/util/exe_path.cc \
		${WRKSRC}/src/gn/command_format_unittest.cc

do-build:
	${SETENV} ${MAKE_ENV} ninja -C${WRKSRC}/out -j${MAKE_JOBS} -v

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/out/gn ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,README.md} ${DOCDIR}

do-test:
	cd ${WRKBUILD} && \
		out/gn_unittests

.include <bsd.port.mk>

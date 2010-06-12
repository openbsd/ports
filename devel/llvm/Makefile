# $OpenBSD: Makefile,v 1.21 2010/06/12 12:15:08 sthen Exp $

COMMENT =	Low Level Virtual Machine (LLVM) compiler infrastructure

LLVM_V =	2.7
DISTNAME =	llvm-${LLVM_V}
PKGNAME =	${DISTNAME}p0

CATEGORIES =	devel

HOMEPAGE =	http://www.llvm.org/

VMEM_WARNING =	Yes
# has built ok on these, at least at one point
ONLY_FOR_ARCHS =i386 amd64 powerpc hppa
# didn't work when tested
NOT_FOR_ARCHS =	sparc64

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m pthread

MASTER_SITES =	http://llvm.org/releases/${LLVM_V}/

DISTFILES= ${DISTNAME}.tgz clang-${LLVM_V}.tgz

post-extract:
	@mv ${WRKDIR}/clang-${LLVM_V} ${WRKDIST}/tools/clang

MODULES =	gcc4 lang/python
MODGCC4_LANGS =	c c++
MODGCC4_ARCHES =*

LIB_DEPENDS =	elf::devel/libelf

# graphviz can be optionally used to draw graphs, but adds heavy build and
# run dependencies, and this feature is often not needed. lie to autoconf
# so we can build consistent packages without pulling in a stack of gnome
# libraries; people wanting to use this can pkg_add graphviz.
CONFIGURE_ENV =	ac_cv_path_DOT=${LOCALBASE}/bin/dot \
		ac_cv_path_DOTTY=${LOCALBASE}/bin/dotty \
		ac_cv_path_GV="echo gv"

REGRESS_DEPENDS=::devel/dejagnu

MAKE_FLAGS =	OPTIMIZE_OPTION="${CFLAGS}" \
		VERBOSE=Yes \
		INSTALL="install -c"

REGRESS_FLAGS =	RUNTESTFLAGS=

SEPARATE_BUILD =	simple
USE_GMAKE =		Yes
USE_LIBTOOL =		Yes

# also supports cmake, but requires v2.6.1
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-bindings=no \
			--enable-libffi=no \
			--enable-optimized

MODGNU_CONFIG_GUESS_DIRS =  ${WRKSRC}/autoconf

.include <bsd.own.mk>

.if ${COMPILER_VERSION} == "gcc3"
PATCH_LIST +=		patch-* gcc3-*
.endif

pre-configure:
	@perl -pi -e s,-lpthread,-pthread,g ${WRKSRC}/configure
	@${SUBST_CMD} ${WRKSRC}/tools/clang/tools/scan-build/scan-build
	@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python
.if ${COMPILER_VERSION:L} == "gcc3"
	@perl -pi -e 's,-L/usr/lib/gcc-lib/,-L${LOCALBASE}/lib/gcc/,;' \
	    -e 's,  "/4.2.1,  "/4.2.4,;' \
	    ${WRKSRC}/tools/clang/lib/Driver/Tools.cpp
	@perl -pi -e 's,/usr/include/g\+\+,${LOCALBASE}/include/c++/4.2.4,' \
	    ${WRKSRC}/tools/clang/lib/Frontend/InitHeaderSearch.cpp
.endif

post-install:
	@ln -s ${TRUEPREFIX}/libexec/clang-cc ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${PREFIX}/share/llvm
	@${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}
	@${INSTALL_SCRIPT} ${WRKSRC}/tools/clang/tools/scan-build/ccc-analyzer \
	    ${WRKSRC}/tools/clang/tools/scan-build/c++-analyzer \
	    ${WRKSRC}/tools/clang/tools/scan-build/scan-build ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/tools/clang/tools/scan-build/sorttable.js \
	    ${WRKSRC}/tools/clang/tools/scan-build/scanview.css \
	    ${PREFIX}/share/llvm

.include <bsd.port.mk>

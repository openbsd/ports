# $OpenBSD: Makefile,v 1.27 2010/10/18 17:47:54 espie Exp $

COMMENT =	Low Level Virtual Machine (LLVM) compiler infrastructure

LLVM_V =	2.7
DISTNAME =	llvm-${LLVM_V}
REVISION =	4

CATEGORIES =	devel

# packager notes in http://llvm.org/docs/Packaging.html
HOMEPAGE =	http://www.llvm.org/

VMEM_WARNING =	Yes
ONLY_FOR_ARCHS =${GCC4_ARCHS}
BROKEN-sparc64 =not yet working on sparc64

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c elf m pthread stdc++

MASTER_SITES =	http://llvm.org/releases/${LLVM_V}/

DISTFILES= ${DISTNAME}.tgz clang-${LLVM_V}.tgz

post-extract:
	@mv ${WRKDIR}/clang-${LLVM_V} ${WRKDIST}/tools/clang

MODULES =	lang/python

LIB_DEPENDS =	::devel/libelf

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
USE_GROFF =	Yes
MAKE_ENV =		REQUIRES_RTTI=1

# also supports cmake
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-bindings=no \
			--enable-libffi=no \
			--enable-optimized

MODGNU_CONFIG_GUESS_DIRS =  ${WRKSRC}/autoconf

pre-configure:
	@perl -pi -e s,-lpthread,-pthread,g ${WRKSRC}/configure
	@${SUBST_CMD} ${WRKSRC}/tools/clang/tools/scan-build/scan-build
	@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/llvm
	@${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}
	@${INSTALL_SCRIPT} ${WRKSRC}/tools/clang/tools/scan-build/ccc-analyzer \
	    ${WRKSRC}/tools/clang/tools/scan-build/c++-analyzer \
	    ${WRKSRC}/tools/clang/tools/scan-build/scan-build ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/tools/clang/tools/scan-build/sorttable.js \
	    ${WRKSRC}/tools/clang/tools/scan-build/scanview.css \
	    ${PREFIX}/share/llvm

.include <bsd.port.mk>

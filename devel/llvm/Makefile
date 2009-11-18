# $OpenBSD: Makefile,v 1.19 2009/11/18 00:49:09 sthen Exp $

COMMENT =	Low Level Virtual Machine (LLVM) compiler infrastructure

LLVM_V =	2.6
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

#llvm+clang repackaged from SVN.
#MASTER_SITES =	http://spacehopper.org/mirrors/
MASTER_SITES =	http://llvm.org/releases/${LLVM_V}/
#MASTER_SITES = ${MASTER_SITE_FREEBSD_LOCAL:=brooks/}

DISTFILES= ${DISTNAME}.tar.gz clang-${LLVM_V}.tar.gz

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

pre-configure:
	@perl -pi -e s,-lpthread,-pthread,g ${WRKSRC}/configure
	@${SUBST_CMD} ${WRKSRC}/tools/clang/utils/scan-build
	@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

# XXX googletest doesn't build

post-install:
	@ln -s ${TRUEPREFIX}/libexec/clang-cc ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${PREFIX}/share/llvm
	@${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}
	@${INSTALL_SCRIPT} ${WRKSRC}/tools/clang/utils/ccc-analyzer \
	    ${WRKSRC}/tools/clang/utils/scan-build ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/tools/clang/utils/sorttable.js ${PREFIX}/share/llvm
	@${INSTALL_DATA} ${WRKSRC}/tools/clang/utils/scanview.css ${PREFIX}/share/llvm

.include <bsd.port.mk>

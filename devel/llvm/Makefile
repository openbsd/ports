# $OpenBSD: Makefile,v 1.13 2009/06/25 15:25:13 sthen Exp $

COMMENT =	Low Level Virtual Machine (LLVM) compiler infrastructure

LLVM_V =	2.6pre20090621
DISTNAME =	llvm-${LLVM_V}
EXTRACT_SUFX =	.tar.bz2
PKGNAME =	${DISTNAME}p1

CATEGORIES =	devel

HOMEPAGE =	http://www.llvm.org/

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
MASTER_SITES =	http://spacehopper.org/mirrors/
#MASTER_SITES =	http://llvm.org/releases/${LLVM_V}/
#MASTER_SITES = ${MASTER_SITE_FREEBSD_LOCAL:=brooks/}

MODULES =	gcc4 lang/python
MODGCC4_LANGS =	c c++
MODGCC4_ARCHES =*

LIB_DEPENDS =	elf::devel/libelf

BUILD_DEPENDS =	::math/graphviz
RUN_DEPENDS =	::math/graphviz

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
			--enable-libffi=no

MODGNU_CONFIG_GUESS_DIRS =  ${WRKSRC}/autoconf

pre-configure:
	@perl -pi -e s,-lpthread,-pthread,g ${WRKSRC}/configure
	@${SUBST_CMD} ${WRKSRC}/tools/clang/utils/scan-build
	@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

# XXX googletest doesn't build
# XXX symlink to workaround problem finding the correct clang binary path

post-install:
	@ln -s ${TRUEPREFIX}/libexec/clang-cc ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${PREFIX}/share/llvm
	@${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}
	@${INSTALL_SCRIPT} ${WRKSRC}/tools/clang/utils/ccc-analyzer \
	    ${WRKSRC}/tools/clang/utils/scan-build ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/tools/clang/utils/sorttable.js ${PREFIX}/share/llvm
	@${INSTALL_DATA} ${WRKSRC}/tools/clang/utils/scanview.css ${PREFIX}/share/llvm

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.9 2009/05/17 09:40:53 sthen Exp $

COMMENT =	Low Level Virtual Machine (LLVM) compiler infrastructure

SVN_SNAPDATE =	2009-02-05
SNAPDATE =	${SVN_SNAPDATE:S/-//g}
V =		2.5.snap${SNAPDATE}
DISTNAME =	llvm-$V
PKGNAME =	${DISTNAME}p1
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	devel

HOMEPAGE =	http://www.llvm.org/

ONLY_FOR_ARCHS =i386 amd64 powerpc

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m pthread

# llvm+clang repackaged from SVN.
MASTER_SITES = http://spacehopper.org/mirrors/
#MASTER_SITES =	${MASTER_SITE_FREEBSD_LOCAL:=brooks/}

# also supports cmake, but requires v2.6.1
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

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-bindings=no

MODGNU_CONFIG_GUESS_DIRS =  ${WRKSRC}/autoconf

pre-configure:
	@perl -pi -e s,-lpthread,-pthread,g ${WRKSRC}/configure
	@perl -pi -e 's,#!/usr/bin/env python,#!${MODPY_BIN},' \
	    ${WRKSRC}/tools/clang/tools/ccc/ccc
	@${SUBST_CMD} ${WRKSRC}/tools/clang/utils/scan-build
	@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

# XXX googletest doesn't build

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/llvm
	@${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}
	@${INSTALL_SCRIPT} ${WRKSRC}/tools/clang/utils/ccc-analyzer \
	    ${WRKSRC}/tools/clang/utils/scan-build ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/tools/clang/utils/sorttable.js ${PREFIX}/share/llvm
	@${INSTALL_DATA} ${WRKSRC}/tools/clang/utils/scanview.css ${PREFIX}/share/llvm
	@mv ${PREFIX}/bin/ccclib ${WRKINST}/${MODPY_SITEPKG}/ccclib
	@chown -R ${SHAREOWN}:${SHAREGRP} ${WRKINST}/${MODPY_SITEPKG}/ccclib

.include <bsd.port.mk>

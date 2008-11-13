# $OpenBSD: Makefile,v 1.4 2008/11/13 08:29:13 sthen Exp $

COMMENT =	Low Level Virtual Machine (LLVM) compiler infrastructure

SVN_SNAPDATE =	2008-11-05
SNAPDATE =	${SVN_SNAPDATE:S/-//g}
V =		2.4.snap${SNAPDATE}
DISTNAME =	llvm-$V
EXTRACT_SUFX =	.tar.bz2
PKGNAME =	llvm-${V:S/2.4/2.5/}

CATEGORIES =	devel

HOMEPAGE =	http://www.llvm.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m pthread

MASTER_SITES =	${MASTER_SITE_FREEBSD_LOCAL:=brooks/}

MODULES =	gcc4
MODGCC4_LANGS =	c c++
MODGCC4_ARCHES =*

LIB_DEPENDS =	elf::devel/libelf

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
	@${SUBST_CMD} ${WRKSRC}/tools/clang/utils/scan-build

post-install:
	@${INSTALL_SCRIPT} ${WRKSRC}/tools/clang/utils/ccc \
	    ${PREFIX}/bin
	@${INSTALL_SCRIPT} ${WRKSRC}/tools/clang/utils/ccc-analyzer \
	    ${PREFIX}/bin
	@${INSTALL_SCRIPT} ${WRKSRC}/tools/clang/utils/scan-build \
	    ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${PREFIX}/share/llvm
	@${INSTALL_DATA} ${WRKSRC}/tools/clang/utils/sorttable.js ${PREFIX}/share/llvm
	@${INSTALL_DATA} ${WRKSRC}/tools/clang/utils/scanview.css ${PREFIX}/share/llvm

.include <bsd.port.mk>

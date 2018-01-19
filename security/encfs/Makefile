# $OpenBSD: Makefile,v 1.16 2018/01/19 15:37:34 jca Exp $

BROKEN-powerpc =	undefined reference to __atomic_store_8

COMMENT =		fuse-based cryptographic filesystem

V =			1.9.2
DISTNAME =		encfs-$V

CATEGORIES =		security

HOMEPAGE =		http://www.arg0.net/encfs

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto fuse intl m ssl tinyxml2

MASTER_SITES =		https://github.com/vgough/encfs/releases/download/v$V/

COMPILER =		base-clang ports-clang ports-gcc

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/gettext-tools
LIB_DEPENDS =		devel/gettext \
			textproc/tinyxml2

CONFIGURE_ARGS =	-DUSE_INTERNAL_TINYXML:Bool=Off
CONFIGURE_ENV =		CXXFLAGS="-DHAVE_UTIMENSAT -D_DIRENT_HAVE_D_TYPE"

# fixup, but those tests don't pass anyway
post-extract:
	sed -i 's,\./build/,${WRKBUILD}/,g' ${WRKSRC}/tests/*.pl

do-test:
	${SETENV} ${MAKE_ENV} ${WRKBUILD}/checkops

.include <bsd.port.mk>

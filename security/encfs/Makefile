# $OpenBSD: Makefile,v 1.13 2017/08/22 01:32:34 jca Exp $

COMMENT =		fuse-based cryptographic filesystem

V =			1.9.2
DISTNAME =		encfs-$V

CATEGORIES =		security

HOMEPAGE =		http://www.arg0.net/encfs

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto fuse intl m ssl tinyxml2

MASTER_SITES =		https://github.com/vgough/encfs/releases/download/v$V/

COMPILER =		clang gcc

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/gettext-tools
LIB_DEPENDS =		devel/gettext \
			textproc/tinyxml2

CONFIGURE_ARGS =	-DUSE_INTERNAL_TINYXML:Bool=Off
CONFIGURE_ENV =		CXXFLAGS="-DHAVE_UTIMENSAT -D_DIRENT_HAVE_D_TYPE"

do-test:
	${SETENV} ${MAKE_ENV} ${WRKBUILD}/checkops

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.24 2021/12/04 11:35:34 tb Exp $

COMMENT =		fuse-based cryptographic filesystem

V =			1.9.5
DISTNAME =		encfs-$V
REVISION =		3

CATEGORIES =		security

HOMEPAGE =		http://www.arg0.net/encfs

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto fuse intl m ssl tinyxml2

MASTER_SITES =		https://github.com/vgough/encfs/releases/download/v$V/

COMPILER =		base-clang ports-clang ports-gcc

MODULES =		devel/cmake \
			lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_RUNDEP =		No

BUILD_DEPENDS =		devel/gettext,-tools
LIB_DEPENDS =		devel/gettext,-runtime \
			textproc/tinyxml2

CONFIGURE_ARGS =	-DUSE_INTERNAL_TINYXML=Off \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=On

CONFIGURE_ENV =		CXXFLAGS="-DHAVE_UTIMENSAT -D_DIRENT_HAVE_D_TYPE"

TEST_TARGET =		unittests test

.include <bsd.port.mk>

.if ${CHOSEN_COMPILER} == "ports-gcc"
WANTLIB += atomic
.endif

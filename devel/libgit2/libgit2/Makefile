# $OpenBSD: Makefile,v 1.51 2022/02/14 19:45:57 ajacoutot Exp $

COMMENT=		the Git library, take 2

GH_ACCOUNT =		libgit2
GH_PROJECT =		libgit2
GH_TAGNAME =		v1.4.0

SHARED_LIBS +=  git2                      14.0 # 0.28

MODULES=		devel/cmake \
			lang/python

MODPY_RUNDEP=		No

COMPILER=		base-clang ports-gcc base-gcc
COMPILER_LANGS=		c
# for atomic builtins
MODGCC4_ARCHS=		hppa

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS=		devel/pcre \
			security/libssh2

WANTLIB += crypto pcre pcreposix pthread ssh2 ssl z

CONFIGURE_ARGS=		-DUSE_SSH=ON \
			-DCMAKE_EXE_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib" \
			-DCMAKE_SHARED_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib"

# XXX
# libgit2-1.4.0/libgit2-1.4.0/deps/ntlmclient/unicode_builtin.h:13:10:
# fatal error: 'iconv.h' file not found
CONFIGURE_ARGS +=	-DCMAKE_C_FLAGS="-I${LOCALBASE}/include"

# XXX
# By not providing "FindHTTP_Parser.cmake" in CMAKE_MODULE_PATH this project
# has asked CMake to find a package configuration file provided by
#  "HTTP_Parser", but CMake did not find one.
#CONFIGURE_ARGS +=	-DUSE_HTTP_PARSER=system

.include <bsd.port.mk>

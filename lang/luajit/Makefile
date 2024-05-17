# keep arch-defines.mk LUAJIT_ARCHS in sync
# bump ports which use PROPERTIES:Mluajit if changing
ONLY_FOR_ARCHS = aarch64 arm amd64 i386 powerpc
#
# games/tome4 is using embedded copy of luajit

SHARED_LIBS +=	luajit-5.1 1.0 # 2.0.5

# "LuaJIT uses rolling releases. There are no release tarballs available
# for download."
# "Distro maintainers for distros that require the fiction of a release
# should do frequent snapshots of a branch. Do not attempt to cherry-pick
# or backport individual changes, no matter how self-standing individual
# changes look (because they often are not)."
GH_ACCOUNT =	LuaJIT
GH_PROJECT =	LuaJIT
GH_COMMIT =	5790d253972c9d78a0c2aece527eda5b134bbbf7

COMMENT =	just-in-time compiler for Lua
# see ${WRKSRC}/.relver
V =		2.1.1713773202
DISTNAME =	LuaJIT-${V}
PKGNAME =	${DISTNAME:L}

CATEGORIES =	lang

HOMEPAGE =	https://luajit.org/

# MIT
PERMIT_PACKAGE =	Yes

USE_NOBTCFI =	Yes

WANTLIB =	c m

MODULES =	lang/lua
MODLUA_SA=	Yes
# luajit specifically targets the 5.1 ABI
MODLUA_VERSION=	5.1

MAKE_FLAGS += \
	CC="${CC}" \
	CCOPT="${CFLAGS}" \
	CCOPT_x86="" \
	INSTALL_LJLIBD="${DESTDIR}${MODLUA_DATADIR}" \
	INSTALL_MAN="${DESTDIR}${PREFIX}/man/man1" \
	INSTALL_SONAME=libluajit-5.1.so.${LIBluajit-5.1_VERSION} \
	PREFIX="${PREFIX}" \
	Q= E=@:

USE_GMAKE =	Yes

SUBST_VARS =	V

pre-configure:
	${SUBST_CMD} ${WRKDIST}/Makefile \
		${WRKDIST}/etc/luajit.pc \
		${WRKDIST}/src/luaconf.h

post-install:
	rm ${PREFIX}/lib/libluajit-${MODLUA_VERSION}.so{,.?}
	ln -s luajit-${V} ${PREFIX}/bin/luajit${MODLUA_DEP_VERSION}

do-test:
	${WRKSRC}/src/luajit -e "print('hello world')" | grep "^hello world$$"

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mclang}
MAKE_FLAGS += TARGET_LIBS='-lc++abi -lpthread'
WANTLIB +=	c++abi pthread
.endif

.include <bsd.port.mk>

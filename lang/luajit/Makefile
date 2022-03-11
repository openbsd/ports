ONLY_FOR_ARCHS = arm amd64 i386 powerpc
# if changing the above and it actually builds, switch to using
#  luajit in mail/rspamd
# - arm added speculatively, so not added in rspamd yet.
#
# no aarch64 support in luajit 2.0 branch
# games/tome4 is using embedded copy of luajit

SHARED_LIBS +=	luajit-${MODLUA_VERSION} 1.0 # 2.0.5

# "Releases are only made occasionally. You're strongly encouraged to follow
# the git branches"
GH_ACCOUNT =	LuaJIT
GH_PROJECT =	LuaJIT
GH_COMMIT =	98f95f69180d48ce49289d6428b46a9ccdd67a46

COMMENT =	just-in-time compiler for Lua
V =		2.0.5
DISTNAME =	LuaJIT-${V}pl20210608
PKGNAME =	${DISTNAME:L}

CATEGORIES =	lang

HOMEPAGE =	https://luajit.org/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =	c m

MODULES =	lang/lua
MODLUA_SA=	Yes
MODLUA_VERSION=	5.1

MAKE_FLAGS += \
	CC="${CC}" \
	CCOPT="${CFLAGS}" \
	CCOPT_x86="" \
	INSTALL_LJLIBD="${DESTDIR}${MODLUA_DATADIR}" \
	INSTALL_MAN="${DESTDIR}${PREFIX}/man/man1" \
	INSTALL_SONAME=libluajit-${MODLUA_VERSION}.so.${LIBluajit-${MODLUA_VERSION}_VERSION} \
	PREFIX="${PREFIX}"

USE_GMAKE =	Yes

SUBST_VARS+=	MODLUA_VERSION

pre-configure:
	${SUBST_CMD} ${WRKDIST}/Makefile \
		${WRKDIST}/etc/luajit.pc \
		${WRKDIST}/src/luaconf.h

post-install:
	mv ${PREFIX}/bin/luajit-$V ${PREFIX}/bin/luajit${MODLUA_DEP_VERSION}

do-test:
	${WRKSRC}/src/luajit -e "print('hello world')" | grep "^hello world$$"

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mclang}
MAKE_FLAGS += TARGET_LIBS='-lc++abi -lpthread'
WANTLIB +=	c++abi pthread
.endif

.include <bsd.port.mk>

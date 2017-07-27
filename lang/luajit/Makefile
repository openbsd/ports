# $OpenBSD: Makefile,v 1.24 2017/07/27 17:27:27 sthen Exp $

ONLY_FOR_ARCHS = powerpc i386 amd64
# arm needs missing EABI symbols

SHARED_LIBS +=	luajit-${MODLUA_VERSION} 1.0 # 2.0.5

COMMENT =	just-in-time compiler for Lua
V =		2.0.5
REVISION =	0
DISTNAME =	LuaJIT-${V}
PKGNAME =	${DISTNAME:L}

CATEGORIES =	lang

HOMEPAGE =	http://luajit.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m

MASTER_SITES =	${HOMEPAGE}download/

MODULES =	lang/lua
MODLUA_SA=	Yes
MODLUA_VERSION=	5.1

MODULES +=	gcc4
MODGCC4_ARCHS =	powerpc
MODGCC4_LANGS =	c

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

.include <bsd.port.mk>
.if ${PROPERTIES:Mclang}
MAKE_FLAGS += TARGET_LDFLAGS='-lc++abi -lpthread'
WANTLIB +=	c++abi pthread
.endif

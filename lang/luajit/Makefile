# $OpenBSD: Makefile,v 1.8 2013/05/09 22:35:17 abieber Exp $

ONLY_FOR_ARCHS = powerpc arm i386 amd64
# for mips64* gcc 4.6 is needed, but that doesn't build on this arch (yet)

SHARED_ONLY =	Yes
SHARED_LIBS +=	luajit-${MODLUA_VERSION} 0.0 # 2.0.0

COMMENT =	just-in-time compiler for Lua
V =		2.0.1
REVISION =	0
DISTNAME =	LuaJIT-${V}
PKGNAME =	${DISTNAME:L}

PATCHFILES =		LuaJIT-2.0.1_hotfix1.patch{v2.0.1_hotfix1.patch}
PATCH_DIST_STRIP =	-p1

CATEGORIES =	lang

HOMEPAGE =	http://luajit.org/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m

MASTER_SITES =	${HOMEPAGE}download/

MODULES =	lang/lua

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

post-install:
	mv ${PREFIX}/bin/luajit-$V ${PREFIX}/bin/luajit${MODLUA_DEP_VERSION}

do-test:
	${WRKSRC}/src/luajit -e "print('hello world')" | grep "^hello world$$"

.include <bsd.port.mk>

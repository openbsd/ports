# $OpenBSD: Makefile,v 1.3 2012/11/16 15:06:57 abieber Exp $

ONLY_FOR_ARCHS = powerpc arm i386 amd64 mips64 mips64el

SHARED_ONLY =	Yes
SHARED_LIBS +=	luajit-${MODLUA_VERSION} 0.0 # 2.0.0

COMMENT =	just-in-time compiler for Lua
V =		2.0.0
DISTNAME =	LuaJIT-${V}
PKGNAME =	${DISTNAME:L}

CATEGORIES =	lang

HOMEPAGE =	http://luajit.org/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m

MASTER_SITES =	${HOMEPAGE}download/

MODULES =	lang/lua

MODULES +=	gcc4
MODGCC4_VERSION = 4.6
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

do-regress:
	${WRKSRC}/src/luajit -e "print('hello world')" | grep "^hello world$$"

.include <bsd.port.mk>

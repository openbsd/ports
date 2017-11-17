# $OpenBSD: Makefile,v 1.18 2017/11/17 00:22:39 naddy Exp $

COMMENT =		CPU, RAM memory, and load monitor for use with tmux(1)

GH_ACCOUNT =		thewtex
GH_PROJECT =		tmux-mem-cpu-load
GH_TAGNAME =		v3.4.0
REVISION =		1

CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		https://github.com/thewtex/tmux-mem-cpu-load

# Apachev2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc ports-clang
MODGCC4_ARCHS =		alpha arm hppa mips64 mips64el powerpc sparc64
MODCLANG_ARCHS =	amd64 i386

WANTLIB +=		c m ${COMPILER_LIBCXX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tmux-mem-cpu-load/
	${INSTALL_DATA} ${WRKSRC}/README.rst \
		${PREFIX}/share/doc/tmux-mem-cpu-load/

.include <bsd.port.mk>

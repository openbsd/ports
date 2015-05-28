# $OpenBSD: Makefile,v 1.4 2015/05/28 10:17:25 pascal Exp $

COMMENT =		CPU, RAM memory, and load monitor for use with tmux(1)

V =			3.2.1
GH_ACCOUNT =		thewtex
GH_PROJECT =		tmux-mem-cpu-load
GH_TAGNAME =		v$V
DISTNAME =		${GH_PROJECT}-$V
REVISION =		2

CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		https://github.com/thewtex/tmux-mem-cpu-load

# Apachev2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/cmake \
			gcc4 \
			lang/clang
MODGCC4_ARCHS =		alpha powerpc sparc64
MODGCC4_LANGS =		c++
MODCLANG_ARCHS =	amd64 i386
MODCLANG_LANGS =	c++

WANTLIB +=		c m stdc++

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tmux-mem-cpu-load/
	${INSTALL_DATA} ${WRKSRC}/README.rst \
		${PREFIX}/share/doc/tmux-mem-cpu-load/

.include <bsd.port.mk>

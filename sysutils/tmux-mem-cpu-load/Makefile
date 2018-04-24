# $OpenBSD: Makefile,v 1.19 2018/04/24 12:52:12 phessler Exp $

COMMENT =		CPU, RAM memory, and load monitor for use with tmux(1)

GH_ACCOUNT =		thewtex
GH_PROJECT =		tmux-mem-cpu-load
GH_TAGNAME =		v3.4.0
REVISION =		2

CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		https://github.com/thewtex/tmux-mem-cpu-load

# Apachev2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc ports-clang

WANTLIB +=		c m ${COMPILER_LIBCXX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tmux-mem-cpu-load/
	${INSTALL_DATA} ${WRKSRC}/README.rst \
		${PREFIX}/share/doc/tmux-mem-cpu-load/

.include <bsd.port.mk>

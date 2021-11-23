# $OpenBSD: Makefile,v 1.1.1.1 2021/11/23 12:59:23 sthen Exp $

SHARED_LIBS =	ptytty 0.0

COMMENT =	library to handle pty/tty/utmp/wtmp/lastlog

DISTNAME =	libptytty-2.0
CATEGORIES =	sysutils
FIX_EXTRACT_PERMISSIONS =	Yes

MASTER_SITES =	http://dist.schmorp.de/libptytty/ \
		http://dist.schmorp.de/libptytty/Attic/

HOMEPAGE =	http://software.schmorp.de/pkg/libptytty.html

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =	base-clang ports-gcc

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODULES =	devel/cmake
NO_TEST =	Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.5 2020/09/10 13:32:37 mariani Exp $

COMMENT =	library used to query system info and statistics

VERSION =	0.4.3
REVISION =      0

NAME =		libsysstat
DISTNAME =	${NAME}-${VERSION}

SHARED_LIBS +=  sysstat-qt5               0.0 # 0.4

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS +=	x11/lxqt/build-tools

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.4 2020/09/04 15:40:11 mariani Exp $

COMMENT =	library used to query system info and statistics

VERSION =	0.4.3

NAME =		libsysstat
DISTNAME =	${NAME}-${VERSION}

SHARED_LIBS +=  sysstat-qt5               0.0 # 0.4

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS +=	x11/lxqt/build-tools

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.2 2019/03/08 20:00:56 cwen Exp $

COMMENT =	library used to query system info and statistics

VERSION =	0.4.1

NAME =		libsysstat
DISTNAME =	${NAME}-${VERSION}
REVISION =	0

SHARED_LIBS +=  sysstat-qt5               0.0 # 0.4

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS +=	x11/lxqt/build-tools

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.3 2019/05/05 17:09:07 naddy Exp $

COMMENT =	library used to query system info and statistics

VERSION =	0.4.1

NAME =		libsysstat
DISTNAME =	${NAME}-${VERSION}
REVISION =	1

SHARED_LIBS +=  sysstat-qt5               0.0 # 0.4

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS +=	x11/lxqt/build-tools

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.6 2021/11/22 05:45:42 rsadowski Exp $

COMMENT =	library used to query system info and statistics

VERSION =	0.4.6

NAME =		libsysstat

SHARED_LIBS +=  sysstat-qt5               0.0 # 0.4

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS +=	x11/lxqt/build-tools

.include <bsd.port.mk>

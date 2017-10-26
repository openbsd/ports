# $OpenBSD: Makefile,v 1.5 2017/10/26 07:53:24 rsadowski Exp $

COMMENT =	KDE helper for multithreaded programming
DISTNAME =	threadweaver-${VERSION}

SHARED_LIBS =	KF5ThreadWeaver		3.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

# please CMake
CONFIGURE_ARGS =	-DCMAKE_POLICY_DEFAULT_CMP0063=OLD

.include <bsd.port.mk>

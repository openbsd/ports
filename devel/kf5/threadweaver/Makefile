# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:38 sthen Exp $

COMMENT =	KDE helper for multithreaded programming
DISTNAME =	threadweaver-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5ThreadWeaver		2.0

WANTLIB =	${COMPILER_LIBCXX} Qt5Core m

# please CMake
CONFIGURE_ARGS =	-DCMAKE_POLICY_DEFAULT_CMP0063=OLD

.include <bsd.port.mk>

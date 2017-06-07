# $OpenBSD: Makefile,v 1.3 2017/06/07 17:03:39 rsadowski Exp $

COMMENT =	KDE helper for multithreaded programming
DISTNAME =	threadweaver-${VERSION}

SHARED_LIBS =	KF5ThreadWeaver		2.0

WANTLIB =	Qt5Core m

# please CMake
CONFIGURE_ARGS =	-DCMAKE_POLICY_DEFAULT_CMP0063=OLD

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.12 2020/09/07 14:48:45 rsadowski Exp $

COMMENT =	string encoding/decoding for KDE
DISTNAME =	kcodecs-${VERSION}

SHARED_LIBS =	KF5Codecs		6.0

WANTLIB = ${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS =		devel/gperf
RUN_DEPENDS =		devel/gperf

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.11 2020/03/23 18:01:05 rsadowski Exp $

COMMENT =	string encoding/decoding for KDE
DISTNAME =	kcodecs-${VERSION}

SHARED_LIBS =	KF5Codecs		5.0

WANTLIB = ${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS =		devel/gperf
RUN_DEPENDS =		devel/gperf

.include <bsd.port.mk>

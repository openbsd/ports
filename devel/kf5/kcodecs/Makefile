# $OpenBSD: Makefile,v 1.13 2021/08/08 12:21:35 rsadowski Exp $

COMMENT =	string encoding/decoding for KDE
DISTNAME =	kcodecs-${VERSION}

SHARED_LIBS =	KF5Codecs		6.1

WANTLIB = ${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS =		devel/gperf
RUN_DEPENDS =		devel/gperf

.include <bsd.port.mk>

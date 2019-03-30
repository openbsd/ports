# $OpenBSD: Makefile,v 1.10 2019/03/30 09:13:49 rsadowski Exp $

COMMENT =	string encoding/decoding for KDE
DISTNAME =	kcodecs-${VERSION}

SHARED_LIBS =	KF5Codecs		4.3

WANTLIB =	${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS =		devel/gperf
RUN_DEPENDS =		devel/gperf

.include <bsd.port.mk>

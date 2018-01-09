# $OpenBSD: Makefile,v 1.6 2018/01/09 21:10:39 rsadowski Exp $

COMMENT =	string encoding/decoding for KDE
DISTNAME =	kcodecs-${VERSION}

SHARED_LIBS =	KF5Codecs		4.0

WANTLIB =	${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS +=	devel/gperf
RUN_DEPENDS +=		devel/gperf

.include <bsd.port.mk>

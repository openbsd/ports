# $OpenBSD: Makefile,v 1.5 2017/10/26 07:53:22 rsadowski Exp $

COMMENT =	string encoding/decoding for KDE
DISTNAME =	kcodecs-${VERSION}

SHARED_LIBS =	KF5Codecs		3.0

WANTLIB =	${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS +=	devel/gperf
RUN_DEPENDS +=		devel/gperf

.include <bsd.port.mk>

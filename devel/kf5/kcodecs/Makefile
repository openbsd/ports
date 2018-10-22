# $OpenBSD: Makefile,v 1.8 2018/10/22 20:30:41 rsadowski Exp $

COMMENT =	string encoding/decoding for KDE
DISTNAME =	kcodecs-${VERSION}

SHARED_LIBS =	KF5Codecs		4.2

WANTLIB =	${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS +=	devel/gperf
RUN_DEPENDS +=		devel/gperf

.include <bsd.port.mk>

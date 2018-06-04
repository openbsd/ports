# $OpenBSD: Makefile,v 1.7 2018/06/04 20:25:31 rsadowski Exp $

COMMENT =	string encoding/decoding for KDE
DISTNAME =	kcodecs-${VERSION}

SHARED_LIBS =	KF5Codecs		4.1

WANTLIB =	${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS +=	devel/gperf
RUN_DEPENDS +=		devel/gperf

.include <bsd.port.mk>

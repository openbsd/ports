# $OpenBSD: Makefile,v 1.9 2019/03/08 20:00:40 cwen Exp $

COMMENT =	string encoding/decoding for KDE
DISTNAME =	kcodecs-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5Codecs		4.2

WANTLIB =	${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS +=	devel/gperf
RUN_DEPENDS +=		devel/gperf

.include <bsd.port.mk>

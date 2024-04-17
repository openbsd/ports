COMMENT =	string encoding/decoding for KDE
DISTNAME =	kcodecs-${VERSION}

SHARED_LIBS +=  KF6Codecs                 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core m

BUILD_DEPENDS =	devel/gperf
RUN_DEPENDS =	devel/gperf

.include <bsd.port.mk>

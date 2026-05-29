COMMENT =		vendor and platform neutral SDR support library

#https://github.com/pothosware/SoapySDR.git
V =			0.8.1
GH_ACCOUNT =		pothosware
GH_PROJECT =		SoapySDR
GH_COMMIT =		1551ea0d39ce546b32a15808b9b1241018a89fc8
DISTNAME =		soapysdr-$V.0.20260102
CATEGORIES =		comms x11

HOMEPAGE =		https://github.com/pothosware/SoapySDR/wiki
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

SHARED_LIBS +=  SoapySDR                  0.0 # 0.0

# BSL-1.0
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} c m

MODULES =		devel/cmake \
			lang/lua \
			lang/python

CONFIGURE_ARGS +=	-DENABLE_PYTHON2=NO \
			-DENABLE_PYTHON3=YES

BUILD_DEPENDS =		devel/swig \
			lang/luajit
RUN_DEPENDS =		lang/luajit

# test results
# 100% tests passed, 0 tests failed out of 4

.include <bsd.port.mk>

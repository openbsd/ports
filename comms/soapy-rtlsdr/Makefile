COMMENT =		Soapy SDR plugin for RTL-SDR

V =			0.3.3
GH_ACCOUNT =		pothosware
GH_PROJECT =		SoapyRTLSDR
GH_COMMIT =		b1f568d1b57cc973a1d2ee49be68d0d748d164e4
DISTNAME =		soapy-rtlsdr-$V.0.20250825
CATEGORIES =		comms

HOMEPAGE =		https://github.com/pothosware/SoapyRTLSDR/wiki
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} m
WANTLIB += SoapySDR rtlsdr

MODULES =		devel/cmake

LIB_DEPENDS =		comms/rtl-sdr \
			comms/soapysdr


.include <bsd.port.mk>

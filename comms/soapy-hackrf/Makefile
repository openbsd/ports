COMMENT =		Soapy SDR plugin for HackRF

V =			0.3.4
GH_ACCOUNT =		pothosware
GH_PROJECT =		SoapyHackRF
GH_COMMIT =		143ff5e7e0f786e341df8846c04e8273c5183c26
DISTNAME =		soapy-hackrf-$V.0.20251009
CATEGORIES =		comms

HOMEPAGE =		https://github.com/pothosware/SoapyHackRF/wiki
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} m
WANTLIB += SoapySDR hackrf

MODULES =		devel/cmake

LIB_DEPENDS =		comms/hackrf \
			comms/soapysdr

.include <bsd.port.mk>

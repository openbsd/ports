# $OpenBSD: Makefile,v 1.1.1.1 2018/11/03 05:59:52 bentley Exp $

COMMENT =	libftdi, interface to ftdi debug device

CATEGORIES =	devel

V =		1.4
DISTNAME =	libftdi1-$V

SHARED_LIBS +=  ftdi1                     0.0 # 2.4
SHARED_LIBS +=  ftdipp1                   0.0 # 2.4

HOMEPAGE =	https://www.intra2net.com/en/developer/libftdi/

# library LGPLv2.1 only; c++ wrapper GPLv2 only with linking exception
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c confuse intl m usb-1.0

MASTER_SITES =	https://www.intra2net.com/en/developer/libftdi/download/

EXTRACT_SUFX =	.tar.bz2

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
BUILD_DEPENDS =		devel/boost \
			devel/swig
LIB_DEPENDS =		devel/gettext \
			devel/libusb1 \
			devel/libconfuse

NO_TEST =	Yes

.include <bsd.port.mk>

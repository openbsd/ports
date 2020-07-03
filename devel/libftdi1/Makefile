# $OpenBSD: Makefile,v 1.6 2020/07/03 21:12:39 sthen Exp $

COMMENT =	libftdi, interface to ftdi debug device

CATEGORIES =	devel

V =		1.4
DISTNAME =	libftdi1-$V
REVISION =	3

SHARED_LIBS +=  ftdi1                     0.0 # 2.4
SHARED_LIBS +=  ftdipp1                   0.0 # 2.4

HOMEPAGE =	https://www.intra2net.com/en/developer/libftdi/

# library LGPLv2.1 only; c++ wrapper GPLv2 only with linking exception
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c confuse intl m usb-1.0

MASTER_SITES =	https://www.intra2net.com/en/developer/libftdi/download/

EXTRACT_SUFX =	.tar.bz2

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
BUILD_DEPENDS =		devel/boost \
			devel/swig
LIB_DEPENDS =		devel/gettext,-runtime \
			devel/libusb1 \
			devel/libconfuse

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

NO_TEST =	Yes

.include <bsd.port.mk>

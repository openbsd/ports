# $OpenBSD: Makefile,v 1.10 2021/11/02 00:00:24 sthen Exp $

COMMENT =	libftdi, interface to ftdi debug device

CATEGORIES =	devel

V =		1.5
DISTNAME =	libftdi1-$V
REVISION =	0

SHARED_LIBS +=  ftdi1                     0.1 # 2.4

HOMEPAGE =	https://www.intra2net.com/en/developer/libftdi/

# library LGPLv2.1 only; c++ wrapper GPLv2 only with linking exception
PERMIT_PACKAGE =	Yes

WANTLIB += c confuse intl usb-1.0

MASTER_SITES =	https://www.intra2net.com/en/developer/libftdi/download/

EXTRACT_SUFX =	.tar.bz2

MODULES =		devel/cmake \
			lang/python
# don't force the python RDEP; this is used by flashrom which is helpful
# to be able to install on small systems
MODPY_RUNDEP =		No
BUILD_DEPENDS =		devel/swig
LIB_DEPENDS =		devel/gettext,-runtime \
			devel/libusb1 \
			devel/libconfuse

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DPYTHON_BINDINGS=ON
# C++ bindings are non-default hidden behind -DFTDICPP, but as of 1.5
# building them results in a bogus include path in the pkgconfig file.
# if readding, add BDEP on boost and COMPILER line, and fix that if needed.

NO_TEST =	Yes

.include <bsd.port.mk>

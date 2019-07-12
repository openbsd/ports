# $OpenBSD: Makefile,v 1.10 2019/07/12 20:46:28 sthen Exp $

COMMENT =	garmin gps device driver

REVISION =	3
DISTNAME =	garmindev-0.3.4
CATEGORIES =	geo x11
HOMEPAGE =	http://www.qlandkarte.org/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qlandkartegt/}
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE =		Yes

MODULES =	devel/cmake
WANTLIB +=	m pthread ${COMPILER_LIBCXX} usb

COMPILER =		base-clang ports-gcc base-gcc
LIB_DEPENDS +=	devel/libusb-compat

# libgarmindev is only needed to compile the drivers, but not on runtime
# see comment in src/IDevice.h
post-install:
	rm ${PREFIX}/lib/qlandkartegt/libgarmin.a

.include <bsd.port.mk>

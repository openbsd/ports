# $OpenBSD: Makefile,v 1.4 2013/03/11 11:07:42 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	garmin gps device driver

REVISION =	1
DISTNAME =	garmindev-0.3.4
CATEGORIES =	geo x11
HOMEPAGE =	http://www.qlandkarte.org/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qlandkartegt/}
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	devel/cmake
WANTLIB +=	m pthread stdc++ usb
LIB_DEPENDS +=	devel/libusb-compat

# libgarmindev is only needed to compile the drivers, but not on runtime
# see comment in src/IDevice.h
post-install:
	rm ${PREFIX}/lib/qlandkartegt/libgarmin.a

.include <bsd.port.mk>

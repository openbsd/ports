# $OpenBSD: Makefile,v 1.1.1.1 2010/12/21 09:02:15 sebastia Exp $

SHARED_ONLY =	Yes

COMMENT =	garmin gps device driver

DISTNAME =	garmindev-0.3.4
CATEGORIES =	geo x11
HOMEPAGE =	http://www.qlandkarte.org/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qlandkartegt/}
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	devel/cmake
WANTLIB +=	m pthread stdc++ usb
LIB_DEPENDS +=	devel/libusb

.include <bsd.port.mk>

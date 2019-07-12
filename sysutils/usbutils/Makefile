# $OpenBSD: Makefile,v 1.10 2019/07/12 20:49:54 sthen Exp $

COMMENT =		utility used to display information about USB devices

VERSION =		007
DISTNAME =		usbutils_${VERSION}.orig
PKGNAME =		usbutils-${VERSION}
REVISION =		0

CATEGORIES =		sysutils
HOMEPAGE =		http://www.linux-usb.org

MAINTAINER =		Martin Pieuchot <mpi@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://ftp.de.debian.org/debian/pool/main/u/usbutils/
EXTRACT_SUFX =		.tar.xz

WANTLIB =		c pthread usb-1.0 z
LIB_DEPENDS =		devel/libusb1

AUTOMAKE_VERSION =	1.11
AUTOCONF_VERSION =	2.69

WRKDIST = 		${WRKDIR}/usbutils-${VERSION}

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	--datarootdir=${LOCALBASE}/lib \
			--datadir=${LOCALBASE}/share/usbutils

.include <bsd.port.mk>

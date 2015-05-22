# $OpenBSD: Makefile,v 1.8 2015/05/22 11:31:18 ajacoutot Exp $

COMMENT =		utility used to display information about USB devices

VERSION =		007
DISTNAME =		usbutils_${VERSION}.orig
PKGNAME =		usbutils-${VERSION}
REVISION =		0

CATEGORIES =		sysutils
HOMEPAGE =		http://www.linux-usb.org

MAINTAINER =		Martin Pieuchot <mpi@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://ftp.de.debian.org/debian/pool/main/u/usbutils/
EXTRACT_SUFX =		.tar.xz

WANTLIB =		c pthread usb-1.0 z
LIB_DEPENDS =		devel/libusb1

AUTOMAKE_VERSION =	1.11
AUTOCONF_VERSION =	2.69

BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
# autogen.sh need libtoolize
BUILD_DEPENDS +=        devel/libtool

WRKDIST = 		${WRKDIR}/usbutils-${VERSION}

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	--datarootdir=${LOCALBASE}/lib \
			--datadir=${LOCALBASE}/share/usbutils

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
				AUTOCONF_VERSION=${AUTOCONF_VERSION} \
				autoreconf --install

.include <bsd.port.mk>

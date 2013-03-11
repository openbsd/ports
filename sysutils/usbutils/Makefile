# $OpenBSD: Makefile,v 1.5 2013/03/11 11:41:33 espie Exp $

COMMENT =		utility used to display information about USB devices

VERSION =		005
DISTNAME =		usbutils_${VERSION}.orig
PKGNAME =		usbutils-${VERSION}

REVISION =		1

CATEGORIES =		sysutils
HOMEPAGE =		http://www.linux-usb.org

MAINTAINER =		Martin Pieuchot <mpi@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://ftp.de.debian.org/debian/pool/main/u/usbutils/

WANTLIB =		c usb-1.0 z
LIB_DEPENDS =		devel/libusb1

AUTOMAKE_VERSION =	1.11
AUTOCONF_VERSION =	2.68

BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
# autogen.sh need libtoolize
BUILD_DEPENDS +=        devel/libtool

WRKDIST = 		${WRKDIR}/usbutils-${VERSION}

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
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

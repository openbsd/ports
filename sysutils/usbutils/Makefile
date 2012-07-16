# $OpenBSD: Makefile,v 1.2 2012/07/16 20:17:03 mpi Exp $

COMMENT =		utility used to display information about USB devices

VERSION =		005
DISTNAME =		usbutils_${VERSION}.orig
PKGNAME =		usbutils-${VERSION}

REVISION =		0

CATEGORIES =		sysutils
HOMEPAGE =		http://www.linux-usb.org

MAINTAINER =		Martin Pieuchot <mpi@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://ftp.de.debian.org/debian/pool/main/u/usbutils/

WANTLIB =		c usb-1.0 pthread z
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
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS +=	--datarootdir=${LOCALBASE}/lib \
			--datadir=${LOCALBASE}/share/usbutils

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
				AUTOCONF_VERSION=${AUTOCONF_VERSION} \
				autoreconf --install

.include <bsd.port.mk>

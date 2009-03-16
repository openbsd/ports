# $OpenBSD: Makefile,v 1.2 2009/03/16 14:27:24 espie Exp $

COMMENT =	libftdi, interface to ftdi debug device

CATEGORIES =	devel

DISTNAME =	libftdi-0.14
PKGNAME =	${DISTNAME}p0

SHARED_LIBS =	ftdi 15.0

HOMEPAGE =	http://www.intra2net.com/de/produkte/opensource/ftdi/

LIB_DEPENDS =	usb::devel/libusb
# configure picks up doxygen if installed, but doesn't affect packaging.

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MASTER_SITES =	${HOMEPAGE}TGZ/

CONFIGURE_STYLE =	gnu
USE_LIBTOOL = 		Yes

NO_REGRESS =		Yes

.include <bsd.port.mk>

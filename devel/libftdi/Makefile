# $OpenBSD: Makefile,v 1.3 2010/10/25 20:55:53 jasper Exp $

COMMENT =	libftdi, interface to ftdi debug device

CATEGORIES =	devel

DISTNAME =	libftdi-0.18

SHARED_LIBS =	ftdi		15.1	# 19.0

HOMEPAGE =	http://www.intra2net.com/en/developer/libftdi/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c usb

MASTER_SITES =		${HOMEPAGE}/download/

LIB_DEPENDS =		::devel/libusb

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS+=	--disable-libftdipp \
			--disable-python-bindings \
			--without-docs
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
USE_LIBTOOL = 		Yes

NO_REGRESS =		Yes

.include <bsd.port.mk>

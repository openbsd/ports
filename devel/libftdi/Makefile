# $OpenBSD: Makefile,v 1.6 2011/11/13 13:54:04 ajacoutot Exp $

COMMENT =	libftdi, interface to ftdi debug device

CATEGORIES =	devel

DISTNAME =	libftdi-0.18
REVISION =	1

SHARED_LIBS =	ftdi		15.1	# 19.0

HOMEPAGE =	http://www.intra2net.com/en/developer/libftdi/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c usb pthread usb-1.0

MASTER_SITES =		${HOMEPAGE}/download/

LIB_DEPENDS =		devel/libusb-compat

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS+=	--disable-libftdipp \
			--disable-python-bindings \
			--without-docs
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
USE_LIBTOOL = 		Yes

NO_REGRESS =		Yes

.include <bsd.port.mk>

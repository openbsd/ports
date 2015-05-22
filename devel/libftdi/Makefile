# $OpenBSD: Makefile,v 1.10 2015/05/22 11:31:13 ajacoutot Exp $

COMMENT =	libftdi, interface to ftdi debug device

CATEGORIES =	devel

DISTNAME =	libftdi-0.20
REVISION =	0

SHARED_LIBS =	ftdi		15.1	# 21.0

HOMEPAGE =	http://www.intra2net.com/en/developer/libftdi/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c usb pthread usb-1.0

MASTER_SITES =		${HOMEPAGE}/download/

LIB_DEPENDS =		devel/libusb-compat

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS+=	--disable-libftdipp \
			--disable-python-bindings \
			--without-docs
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

.include <bsd.port.mk>

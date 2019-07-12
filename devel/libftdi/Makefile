# $OpenBSD: Makefile,v 1.12 2019/07/12 20:44:38 sthen Exp $

COMMENT =	libftdi, interface to ftdi debug device

CATEGORIES =	devel

DISTNAME =	libftdi-0.20
REVISION =	1

SHARED_LIBS =	ftdi		15.1	# 21.0

HOMEPAGE =	https://www.intra2net.com/en/developer/libftdi/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

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

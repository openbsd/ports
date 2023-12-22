COMMENT=		debugger for use with MSP 430 MCUs

V =			0.25pl20220518
GH_ACCOUNT=		dlbeer
GH_PROJECT=		mspdebug
GH_COMMIT=		985b390ba22f4229aeca9f02e273a54eb4a76a9a
DISTNAME =		${GH_PROJECT}-${V}
CATEGORIES=		devel

HOMEPAGE=		https://dlbeer.co.nz/mspdebug/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c curses pthread readline usb

LIB_DEPENDS=		devel/libusb-compat

USE_GMAKE=		Yes
MAKE_FLAGS=		CC="${CC}" GCC_CFLAGS="" LDFLAGS=""
FAKE_FLAGS=		PREFIX=${PREFIX} MANDIR=${PREFIX}/man/man1/

NO_TEST=		Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.21 2018/07/10 13:13:42 jasper Exp $

COMMENT=		debugger for use with MSP 430 MCUs

GH_ACCOUNT =		dlbeer
GH_PROJECT =		mspdebug
GH_TAGNAME =		v0.23
DISTNAME=		mspdebug-0.23
REVISION =		0
CATEGORIES=		devel

HOMEPAGE=		https://dlbeer.co.nz/mspdebug/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread readline termcap usb

LIB_DEPENDS=		devel/libusb-compat

USE_GMAKE=		Yes
MAKE_FLAGS=		CC="${CC}" GCC_CFLAGS="" LDFLAGS=""
FAKE_FLAGS=		PREFIX=${PREFIX} MANDIR=${PREFIX}/man/man1/

NO_TEST=		Yes

.include <bsd.port.mk>

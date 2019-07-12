# $OpenBSD: Makefile,v 1.23 2019/07/12 20:44:43 sthen Exp $

COMMENT=		debugger for use with MSP 430 MCUs

GH_ACCOUNT =		dlbeer
GH_PROJECT =		mspdebug
GH_TAGNAME =		v0.23
DISTNAME=		mspdebug-0.23
REVISION =		1
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

# $OpenBSD: Makefile,v 1.17 2013/04/28 16:34:53 jasper Exp $

COMMENT=		debugger for use with MSP 430 MCUs

DISTNAME=		mspdebug-0.21
CATEGORIES=		devel devel/msp430

HOMEPAGE=		http://mspdebug.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mspdebug/}

WANTLIB += c pthread readline termcap usb

LIB_DEPENDS=		devel/libusb-compat

USE_GMAKE=		Yes
MAKE_FLAGS=		CC="${CC}" GCC_CFLAGS="" LDFLAGS=""
FAKE_FLAGS=		PREFIX=${PREFIX} MANDIR=${PREFIX}/man/man1/

NO_TEST=		Yes

.include <bsd.port.mk>

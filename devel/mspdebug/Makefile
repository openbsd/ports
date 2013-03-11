# $OpenBSD: Makefile,v 1.16 2013/03/11 10:50:12 espie Exp $

COMMENT=		debugger for use with MSP 430 MCUs

DISTNAME=		mspdebug-0.21
CATEGORIES=		devel devel/msp430

HOMEPAGE=		http://mspdebug.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mspdebug/}

WANTLIB += c pthread readline termcap usb

BUILD_DEPENDS=		archivers/gtar
LIB_DEPENDS=		devel/libusb-compat

TAR=			${LOCALBASE}/bin/gtar

USE_GMAKE=		Yes
MAKE_FLAGS=		CC="${CC}" GCC_CFLAGS="" LDFLAGS=""
FAKE_FLAGS=		PREFIX=${PREFIX} MANDIR=${PREFIX}/man/man1/

NO_TEST=		Yes

.include <bsd.port.mk>

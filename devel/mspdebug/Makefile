# $OpenBSD: Makefile,v 1.13 2011/11/13 13:54:04 ajacoutot Exp $

COMMENT=		debugger for use with MSP 430 MCUs

DISTNAME=		mspdebug-0.18
CATEGORIES=		devel devel/msp430
REVISION=		0

HOMEPAGE=		http://mspdebug.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mspdebug/}

WANTLIB += c pthread readline termcap usb

BUILD_DEPENDS=		archivers/gtar
LIB_DEPENDS=		devel/libusb-compat

TAR=			${LOCALBASE}/bin/gtar

USE_GMAKE=		Yes
MAKE_FLAGS=		CC="${CC}" GCC_CFLAGS="" LDFLAGS=""
FAKE_FLAGS=		PREFIX=${PREFIX} MANDIR=${PREFIX}/man/man1/

NO_REGRESS=		Yes

.include <bsd.port.mk>

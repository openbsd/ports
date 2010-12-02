# $OpenBSD: Makefile,v 1.1.1.1 2010/12/02 10:35:04 jasper Exp $

COMMENT=		debugger for use with MSP 430 MCUs

DISTNAME=		mspdebug-0.10
CATEGORIES=		devel

HOMEPAGE=		http://mspdebug.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mspdebug/}

WANTLIB += c readline termcap elf usb

LIB_DEPENDS=		devel/libelf \
			devel/libusb

USE_GMAKE=		Yes

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mspdebug ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mspdebug.man ${PREFIX}/man/man1/mspdebug.1

.include <bsd.port.mk>

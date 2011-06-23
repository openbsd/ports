# $OpenBSD: Makefile,v 1.8 2011/06/23 22:50:27 naddy Exp $

COMMENT=	tool to program the eeprom on FTDI usb devices

DISTNAME=	ftdi-eeprom-1.1
REVISION=	1
CATEGORIES=	misc

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	http://www.bwct.de/

FAKE_FLAGS=	BINDIR="${TRUEPREFIX}/sbin" \
		MANDIR="${TRUEPREFIX}/man/man"

.include <bsd.port.mk>

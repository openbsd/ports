# $OpenBSD: Makefile,v 1.3 2007/09/15 23:54:16 merdely Exp $

COMMENT=	tool to programm the eeprom on FTDI usb devices

DISTNAME=	ftdi-eeprom-1.1
CATEGORIES=	misc

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	http://www.bwct.de/

FAKE_FLAGS=	BINDIR="${TRUEPREFIX}/sbin" \
		MANDIR="${TRUEPREFIX}/man/cat"

.include <bsd.port.mk>

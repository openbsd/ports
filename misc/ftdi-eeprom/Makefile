# $OpenBSD: Makefile,v 1.9 2013/03/11 11:23:57 espie Exp $

COMMENT=	tool to program the eeprom on FTDI usb devices

DISTNAME=	ftdi-eeprom-1.1
REVISION=	1
CATEGORIES=	misc

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	http://www.bwct.de/

FAKE_FLAGS=	BINDIR="${TRUEPREFIX}/sbin" \
		MANDIR="${TRUEPREFIX}/man/man"

.include <bsd.port.mk>

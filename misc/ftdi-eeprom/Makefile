# $OpenBSD: Makefile,v 1.10 2019/07/12 20:47:50 sthen Exp $

COMMENT=	tool to program the eeprom on FTDI usb devices

DISTNAME=	ftdi-eeprom-1.1
REVISION=	1
CATEGORIES=	misc

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	http://www.bwct.de/

FAKE_FLAGS=	BINDIR="${TRUEPREFIX}/sbin" \
		MANDIR="${TRUEPREFIX}/man/man"

.include <bsd.port.mk>

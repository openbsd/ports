# $OpenBSD: Makefile,v 1.7 2011/03/08 06:44:55 ajacoutot Exp $

COMMENT=	tool to program the eeprom on FTDI usb devices

DISTNAME=	ftdi-eeprom-1.1
REVISION=	0
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

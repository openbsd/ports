# $OpenBSD: Makefile,v 1.5 2010/10/19 09:21:04 sthen Exp $

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
USE_GROFF =	Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2003/02/18 23:58:00 naddy Exp $

COMMENT=	"tool to programm the eeprom on FTDI usb devices"

DISTNAME=	ftdi-eeprom-1.1
CATEGORIES=	misc

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.bwct.de/

FAKE_FLAGS=	BINDIR="${TRUEPREFIX}/sbin" \
		MANDIR="${TRUEPREFIX}/man/cat"

.include <bsd.port.mk>

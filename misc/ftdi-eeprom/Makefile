# $OpenBSD: Makefile,v 1.2 2004/12/22 11:48:33 alek Exp $

COMMENT=	"tool to programm the eeprom on FTDI usb devices"

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

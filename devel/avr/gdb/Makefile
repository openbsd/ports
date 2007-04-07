# $OpenBSD: Makefile,v 1.3 2007/04/07 19:44:53 steven Exp $

COMMENT=	"Atmel AVR 8-bit RISC microcontrollers' GNU gdb"

VER=		6.3
DISTNAME=	gdb-${VER}
PKGNAME=	avr-gdb-${VER}p1

HOMEPAGE=	http://www.gnu.org/software/gdb/gdb.html

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c m ncurses

MASTER_SITES=   	${MASTER_SITE_GNU:=gdb/}

REGRESS_DEPENDS=	::devel/dejagnu

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-shared

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.2 2005/09/26 08:59:06 aanriot Exp $

COMMENT=	"Atmel AVR 8-bit RISC microcontrollers' GNU gdb"

VER=		6.3
DISTNAME=	gdb-${VER}
PKGNAME=	avr-gdb-${VER}p0

HOMEPAGE=	http://www.gnu.org/software/gdb/gdb.html

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c m ncurses

MASTER_SITES=   	${MASTER_SITE_GNU:=gdb/}

REGRESS_DEPENDS=	::devel/dejagnu

.include <bsd.port.mk>

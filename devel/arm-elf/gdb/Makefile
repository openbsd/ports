# $OpenBSD: Makefile,v 1.1.1.1 2007/04/02 15:35:02 sturm Exp $

COMMENT=	"gdb for arm-elf cross-development"

DISTNAME=	gdb-6.4

HOMEPAGE=	http://www.gnu.org/software/gdb/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m ncurses

MASTER_SITES=	${MASTER_SITE_GNU:=gdb/}

USE_GMAKE=	Yes

CFLAGS+=	-Dunix

REGRESS_DEPENDS=::devel/dejagnu

.include <bsd.port.mk>

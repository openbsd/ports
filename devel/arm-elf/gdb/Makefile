# $OpenBSD: Makefile,v 1.8 2011/11/11 18:33:03 jasper Exp $

COMMENT=	gdb for arm-elf cross-development

DISTNAME=	gdb-7.1
REVISION=	0

HOMEPAGE=	http://www.gnu.org/software/gdb/

WANTLIB=	c expat m ncurses z

MASTER_SITES=	${MASTER_SITE_GNU:=gdb/}
DIST_SUBDIR=	gdb

USE_GMAKE=	Yes

CFLAGS+=	-Dunix

CONFIGURE_ARGS+=	--enable-multilib \
			--enable-thumb \
			--enable-interwork

REGRESS_DEPENDS=devel/dejagnu

.include <bsd.port.mk>

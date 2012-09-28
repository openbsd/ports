# $OpenBSD: Makefile,v 1.9 2012/09/28 18:55:27 sthen Exp $

COMMENT=	gdb for arm-elf cross-development

DISTNAME=	gdb-7.1
REVISION=	1

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

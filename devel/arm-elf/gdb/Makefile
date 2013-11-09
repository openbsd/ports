# $OpenBSD: Makefile,v 1.11 2013/11/09 23:19:02 naddy Exp $

COMMENT=	gdb for arm-elf cross-development

DISTNAME=	gdb-7.1
REVISION=	2

HOMEPAGE=	https://www.gnu.org/software/gdb/

WANTLIB=	c expat m ncurses z

MASTER_SITES=	${MASTER_SITE_GNU:=gdb/}
DIST_SUBDIR=	gdb

USE_GMAKE=	Yes

CFLAGS+=	-Dunix

CONFIGURE_ARGS+=	--enable-multilib \
			--enable-thumb \
			--enable-interwork

TEST_DEPENDS=devel/dejagnu

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.12 2019/05/20 20:52:31 sthen Exp $

COMMENT=	gdb for arm-elf cross-development

DISTNAME=	gdb-7.1
REVISION=	3

HOMEPAGE=	https://www.gnu.org/software/gdb/

WANTLIB=	c expat m curses z

MASTER_SITES=	${MASTER_SITE_GNU:=gdb/}
DIST_SUBDIR=	gdb

USE_GMAKE=	Yes

CFLAGS+=	-Dunix

CONFIGURE_ARGS+=	--enable-multilib \
			--enable-thumb \
			--enable-interwork

TEST_DEPENDS=devel/dejagnu

.include <bsd.port.mk>

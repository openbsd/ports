# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:01 espie Exp $

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

TEST_DEPENDS=devel/dejagnu

.include <bsd.port.mk>

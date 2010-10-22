# $OpenBSD: Makefile,v 1.4 2010/10/22 15:20:21 jasper Exp $

COMMENT=	gdb for arm-elf cross-development

DISTNAME=	gdb-7.1

HOMEPAGE=	http://www.gnu.org/software/gdb/

WANTLIB=	c expat m ncurses z

MASTER_SITES=	${MASTER_SITE_GNU:=gdb/}

USE_GMAKE=	Yes
USE_GROFF =	Yes

CFLAGS+=	-Dunix

CONFIGURE_ARGS+=	--enable-multilib \
			--enable-thumb \
			--enable-interwork

REGRESS_DEPENDS=::devel/dejagnu

.include <bsd.port.mk>

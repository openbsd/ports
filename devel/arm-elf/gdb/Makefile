# $OpenBSD: Makefile,v 1.6 2010/11/15 19:45:56 espie Exp $

COMMENT=	gdb for arm-elf cross-development

DISTNAME=	gdb-7.1

HOMEPAGE=	http://www.gnu.org/software/gdb/

WANTLIB=	c expat m ncurses z

MASTER_SITES=	${MASTER_SITE_GNU:=gdb/}

USE_GMAKE=	Yes

CFLAGS+=	-Dunix

CONFIGURE_ARGS+=	--enable-multilib \
			--enable-thumb \
			--enable-interwork

REGRESS_DEPENDS=devel/dejagnu

.include <bsd.port.mk>

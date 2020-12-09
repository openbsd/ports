# $OpenBSD: Makefile,v 1.8 2020/12/09 21:41:43 sthen Exp $

COMMENT=	gdb for arm-none-eabi cross-development

DISTNAME=	gdb-7.9.1
EXTRACT_SUFX=	.tar.xz
REVISION=	5

HOMEPAGE=	https://www.gnu.org/software/gdb/

WANTLIB=	c expat m curses pthread z

MASTER_SITES=	${MASTER_SITE_GNU:=gdb/}
DIST_SUBDIR=	gdb

USE_GMAKE=	Yes

CFLAGS+=	-Dunix

CONFIGURE_ARGS+=	--enable-multilib \
			--enable-thumb \
			--enable-interwork \
			--without-guile

MODULES=	lang/python

TEST_DEPENDS=devel/dejagnu

.include <bsd.port.mk>

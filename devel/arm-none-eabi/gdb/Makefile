# $OpenBSD: Makefile,v 1.6 2019/05/20 20:52:31 sthen Exp $

COMMENT=	gdb for arm-none-eabi cross-development

DISTNAME=	gdb-7.9.1
EXTRACT_SUFX=	.tar.xz
REVISION=	3

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

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/gdb/system-gdbinit

.include <bsd.port.mk>

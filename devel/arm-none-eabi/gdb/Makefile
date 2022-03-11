COMMENT=	gdb for arm-none-eabi cross-development

DISTNAME=	gdb-7.12.1
EXTRACT_SUFX=	.tar.xz

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
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

TEST_DEPENDS=devel/dejagnu

.include <bsd.port.mk>

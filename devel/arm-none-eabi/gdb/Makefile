COMMENT=	gdb for arm-none-eabi cross-development

DISTNAME=	gdb-7.12.1
EXTRACT_SUFX=	.tar.xz
REVISION=	1

HOMEPAGE=	https://www.gnu.org/software/gdb/

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB=	${COMPILER_LIBCXX} c expat m curses pthread z

SITES=		${SITE_GNU:=gdb/}
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

COMMENT=	tools and library routines for working with GIF images

DISTNAME=	giflib-5.2.2
SHARED_LIBS +=	gif                  9.1      # 7.1
CATEGORIES=	graphics

SITES=		${SITE_SOURCEFORGE:=giflib/}

HOMEPAGE=	https://giflib.sourceforge.net/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c m

USE_GMAKE=	Yes
CFLAGS+=	-DHAVE_REALLOCARRAY
MAKE_FLAGS=	CC="${CC}" OFLAGS="${CFLAGS}" LIBVER="${LIBgif_VERSION}"
FAKE_FLAGS=	MANDIR="${PREFIX}/man" LIBVER="${LIBgif_VERSION}"

BUILD_DEPENDS+=	textproc/xmlto
TEST_DEPENDS=	sysutils/coreutils
TEST_TARGET=	check

.include <bsd.port.mk>

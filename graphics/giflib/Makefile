# $OpenBSD: Makefile,v 1.29 2019/07/12 20:46:59 sthen Exp $

COMMENT=	tools and library routines for working with GIF images

DISTNAME=	giflib-5.1.6
SHARED_LIBS +=	gif                  8.0      # 7.1
CATEGORIES=	graphics

# XXX broken tar.gz, symlinks to self - gtar copes
TAR=		${LOCALBASE}/bin/gtar
BUILD_DEPENDS=	archivers/gtar

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=giflib/}

HOMEPAGE=	http://giflib.sourceforge.net/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c m

USE_GMAKE=	Yes
CFLAGS+=	-DHAVE_REALLOCARRAY
MAKE_FLAGS=	CC="${CC}" OFLAGS="${CFLAGS}" LIBVER="${LIBgif_VERSION}"
FAKE_FLAGS=	MANDIR="${PREFIX}/man/man1" LIBVER="${LIBgif_VERSION}"

BUILD_DEPENDS+=	textproc/xmlto
TEST_DEPENDS=	sysutils/coreutils
TEST_TARGET=	check

.include <bsd.port.mk>

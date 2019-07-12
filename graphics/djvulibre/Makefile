# $OpenBSD: Makefile,v 1.45 2019/07/12 20:46:57 sthen Exp $

COMMENT=	view, decode and encode DjVu files

DISTNAME=	djvulibre-3.5.27
REVISION=	6
SHARED_LIBS=	djvulibre	26.0	# 27.0
CATEGORIES=	graphics print

HOMEPAGE=	http://djvu.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djvu/}

WANTLIB=	c iconv m jpeg pthread ${COMPILER_LIBCXX} tiff z

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	converters/libiconv \
		graphics/jpeg \
		graphics/tiff

RUN_DEPENDS+=	misc/shared-mime-info \
		x11/gtk+3,-guic

BUILD_DEPENDS+=	x11/gnome/librsvg

USE_GMAKE=	Yes

AUTOCONF_VERSION=	2.69

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--with-extra-includes=${LOCALBASE}/include \
			--with-jpeg=${LOCALBASE} \
			--with-tiff=${LOCALBASE}
CONFIGURE_ENV+=		LDFLAGS='${LDFLAGS} -L${LOCALBASE}/lib -liconv'

NO_TEST=	Yes

.include <bsd.port.mk>

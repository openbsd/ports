# $OpenBSD: Makefile,v 1.38 2017/05/10 02:20:22 schwarze Exp $

COMMENT=	view, decode and encode DjVu files

DISTNAME=	djvulibre-3.5.27
REVISION=	1
SHARED_LIBS=	djvulibre	26.0	# 27.0
CATEGORIES=	graphics print

HOMEPAGE=	http://djvu.sourceforge.net/

MAINTAINER=	Alexandr Shadchin <shadchin@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djvu/}

WANTLIB=	c iconv m jpeg pthread ${LIBCXX} tiff z

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

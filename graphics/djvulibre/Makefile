# $OpenBSD: Makefile,v 1.34 2015/05/12 16:10:27 shadchin Exp $

COMMENT=	view, decode and encode DjVu files

DISTNAME=	djvulibre-3.5.27
SHARED_LIBS=	djvulibre	26.0	# 27.0
CATEGORIES=	graphics print

HOMEPAGE=	http://djvu.sourceforge.net/

MAINTAINER=	Alexandr Shadchin <shadchin@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djvu/}

WANTLIB=	c m jpeg pthread stdc++ tiff z

MODULES=	converters/libiconv

LIB_DEPENDS=	graphics/jpeg \
		graphics/tiff

RUN_DEPENDS+=	misc/shared-mime-info \
		x11/gtk+3,-guic

BUILD_DEPENDS+=	x11/gnome/librsvg

USE_GMAKE=	Yes
USE_GROFF =	Yes

AUTOCONF_VERSION=	2.69

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--with-extra-includes=${LOCALBASE}/include \
			--with-jpeg=${LOCALBASE} \
			--with-tiff=${LOCALBASE}
CONFIGURE_ENV+=		LDFLAGS='${LDFLAGS} -L${LOCALBASE}/lib -liconv'

NO_TEST=	Yes

.include <bsd.port.mk>

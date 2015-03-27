# $OpenBSD: Makefile,v 1.33 2015/03/27 08:11:28 ajacoutot Exp $

COMMENT=	view, decode and encode DjVu files

DISTNAME=	djvulibre-3.5.25.3
REVISION=	2
SHARED_LIBS=	djvulibre	25.0	# 25.0
CATEGORIES=	graphics print

HOMEPAGE=	http://djvu.sourceforge.net/

MAINTAINER=	Alexandr Shadchin <shadchin@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djvu/}

WANTLIB=	c m jpeg pthread stdc++ tiff z

LIB_DEPENDS=	graphics/jpeg \
		graphics/tiff

RUN_DEPENDS+=	x11/gtk+3,-guic

BUILD_DEPENDS+=	x11/gnome/librsvg

USE_GMAKE=	Yes
USE_GROFF =	Yes

AUTOCONF_VERSION=	2.67

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--with-jpeg=${LOCALBASE} \
			--with-tiff=${LOCALBASE}

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME:R}

.include <bsd.port.mk>

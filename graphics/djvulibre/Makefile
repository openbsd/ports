# $OpenBSD: Makefile,v 1.27 2012/07/08 09:13:59 shadchin Exp $

COMMENT=	view, decode and encode DjVu files

DISTNAME=	djvulibre-3.5.25.3
SHARED_LIBS=	djvulibre	25.0	# 25.0
CATEGORIES=	graphics print

HOMEPAGE=	http://djvu.sourceforge.net/

MAINTAINER=	Alexandr Shadchin <shadchin@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djvu/}

WANTLIB=	c m jpeg pthread stdc++ tiff z

LIB_DEPENDS=	graphics/jpeg \
		graphics/tiff

RUN_DEPENDS+=	x11/gtk+2,-guic

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-jpeg=${LOCALBASE} \
		--with-tiff=${LOCALBASE}

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME:R}

.include <bsd.port.mk>

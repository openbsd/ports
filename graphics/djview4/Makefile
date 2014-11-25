# $OpenBSD: Makefile,v 1.21 2014/11/25 13:37:19 schwarze Exp $

COMMENT=	portable DjVu viewer and browser plugin

DISTNAME=	djview-4.9
REVISION=	0
PKGNAME=	${DISTNAME:S/djview/djview4/}
CATEGORIES=	graphics print

HOMEPAGE=	http://djvu.sourceforge.net/djview4.html

MAINTAINER=	Alexandr Shadchin <shadchin@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE QtGui QtNetwork SM X11 Xext Xi Xinerama Xrender
WANTLIB += c djvulibre fontconfig freetype m pthread stdc++ tiff

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djvu/}

MODULES=	x11/qt4

LIB_DEPENDS=	graphics/djvulibre

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic

USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tiff=${LOCALBASE}
CONFIGURE_ENV+=	QTDIR="${MODQT4_QTDIR}" \
		CPPFLAGS="-I${X11BASE}/include"

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME:S/djview/djview4/}

.include <bsd.port.mk>

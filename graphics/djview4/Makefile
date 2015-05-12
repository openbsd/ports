# $OpenBSD: Makefile,v 1.24 2015/05/12 19:48:57 shadchin Exp $

SHARED_ONLY=	Yes

COMMENT=	portable DjVu viewer and browser plugin

DISTNAME=	djview-4.10.3
REVISION=	0
PKGNAME=	${DISTNAME:S/djview/djview4/}
CATEGORIES=	graphics print

HOMEPAGE=	http://djvu.sourceforge.net/djview4.html

MAINTAINER=	Alexandr Shadchin <shadchin@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE QtGui QtNetwork QtOpenGL SM X11 Xext Xi Xinerama
WANTLIB += Xrender c djvulibre fontconfig freetype glib-2.0 m
WANTLIB += pcre pthread stdc++ tiff

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djvu/}

MODULES=	x11/qt4 devel/gettext

LIB_DEPENDS=	graphics/djvulibre

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tiff=${LOCALBASE}
CONFIGURE_ENV+=	QTDIR="${MODQT4_QTDIR}" \
		CPPFLAGS="-I${X11BASE}/include"

MAKE_ENV+=	V=1

NO_TEST=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>

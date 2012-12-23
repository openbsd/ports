# $OpenBSD: Makefile,v 1.17 2012/12/23 13:25:11 sthen Exp $

COMMENT=	portable DjVu viewer and browser plugin

DISTNAME=	djview-4.8
PKGNAME=	${DISTNAME:S/djview/djview4/}
CATEGORIES=	graphics print
REVISION=	3

HOMEPAGE=	http://djvu.sourceforge.net/djview4.html

MAINTAINER=	Alexandr Shadchin <shadchin@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += QtGui QtNetwork X11 Xext c djvulibre m pthread stdc++ tiff
WANTLIB += ICE SM Xi Xinerama Xrender fontconfig freetype

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djvu/}

MODULES=	x11/qt4

LIB_DEPENDS=	graphics/djvulibre

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tiff=${LOCALBASE}
CONFIGURE_ENV+= QTDIR="${MODQT4_QTDIR}" \
		CPPFLAGS="-I${X11BASE}/include"

NO_REGRESS=	Yes

.include <bsd.port.mk>

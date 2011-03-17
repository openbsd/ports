# $OpenBSD: Makefile,v 1.10 2011/03/17 14:57:38 shadchin Exp $

COMMENT=	portable DjVu viewer and browser plugin

DISTNAME=	djview-4.7
PKGNAME=	${DISTNAME:S/djview/djview4/}
CATEGORIES=	graphics print

HOMEPAGE=	http://djvu.sourceforge.net/djview4.html

MAINTAINER=	Alexandr Shadchin <shadchin@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djvu/}

WANTLIB += QtGui QtNetwork X11 Xext c djvulibre m pthread stdc++ tiff

MODULES=	x11/qt4

LIB_DEPENDS=	graphics/djvulibre

BUILD_DEPENDS=	x11/gnome/librsvg
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/hicolor-icon-theme

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tiff=${LOCALBASE}
CONFIGURE_ENV+= QTDIR="${MODQT4_QTDIR}" \
		CPPFLAGS="-I${X11BASE}/include"

NO_REGRESS=	Yes

.include <bsd.port.mk>

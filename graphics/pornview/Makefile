# $OpenBSD: Makefile,v 1.10 2007/12/15 20:54:19 ajacoutot Exp $

COMMENT=	image viewer/manager
DISTNAME=	pornview-0.2.0pre1
PKGNAME=	${DISTNAME}p3
CATEGORIES=	graphics

HOMEPAGE=	http://pornview.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pornview/}

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	gmodule Xi gtk Xext c X11 Xau Xdmcp jpeg m gdk glib \
		Xinerama glib tiff z png charset

FLAVORS=	mplayer
FLAVOR?=

MODULES=	devel/gettext
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	gdk_pixbuf.>=2::graphics/gdk-pixbuf


.if ${FLAVOR:L:Mmplayer}
CONFIGURE_ARGS+=--enable-mplayer
RUN_DEPENDS+=	:mplayer-*:x11/mplayer
.endif

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
		  -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib" 

.include <bsd.port.mk>

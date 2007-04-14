# $OpenBSD: Makefile,v 1.6 2007/04/14 21:20:19 sturm Exp $

COMMENT=	"small and lightweight IDE"

DISTNAME=	geany-0.10.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel

HOMEPAGE=	http://geany.uvena.de/

MAINTAINER=	Vlad Glagolev <stelzy@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=geany/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext

USE_X11=	Yes
USE_GMAKE=	Yes

WANTLIB=	X11 Xau Xdmcp Xrender expat stdc++ c m z \
		glib-2.0 gmodule-2.0 gobject-2.0 glitz png \
		fontconfig freetype atk-1.0 cairo \
		pango-1.0 pangoft2-1.0 pangocairo-1.0

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS= CPPFLAGS="-I${LOCALBASE}/include"

FLAVORS=	vte
FLAVOR?=

.if ${FLAVOR:L:Mvte}
LIB_DEPENDS+=	:vte-*:devel/vte
.else
CONFIGURE_ARGS+=--disable-vte
.endif

.include <bsd.port.mk>

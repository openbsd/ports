# $OpenBSD: Makefile,v 1.3 2006/12/22 07:04:49 jasper Exp $

COMMENT=	"small and lightweight IDE"

DISTNAME=	geany-0.10
CATEGORIES=	devel
HOMEPAGE=	http://geany.uvena.de/

MAINTAINER=	Vlad Glagolev <stelzy@gmail.com>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=geany/}

EXTRACT_SUFX=	.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 stdc++ c m iconv intl \
		glib-2.0 gmodule-2.0 gobject-2.0 \
		fontconfig freetype atk-1.0 cairo \
		pango-1.0 pangoft2-1.0 pangocairo-1.0

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS= CPPFLAGS="-I${LOCALBASE}/include"

USE_X11=	Yes
USE_GMAKE=	Yes

FLAVORS=	vte
FLAVOR?=

.if ${FLAVOR:L:Mvte}
LIB_DEPENDS+=	::devel/vte
.else
CONFIGURE_ARGS+=--disable-vte
.endif

.include <bsd.port.mk>

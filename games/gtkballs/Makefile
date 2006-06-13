# $OpenBSD: Makefile,v 1.19 2006/06/13 13:24:17 bernd Exp $

COMMENT=	"gtk+ clone of the lines ball logic game"

DISTNAME=	gtkballs-3.1.5
PKGNAME=	${DISTNAME}p2
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}dist/ \
		${MASTER_SITE_SUNSITE:=games/strategy/}

HOMEPAGE=	http://gtkballs.antex.ru/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c fontconfig freetype m X11 \
			gobject-2.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 \
			pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0 \
			atk-1.0.0.0 cairo

MODULES=	devel/gettext

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2

NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--localstatedir=${LOCALBASE}/share/examples
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

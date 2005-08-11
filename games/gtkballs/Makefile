# $OpenBSD: Makefile,v 1.16 2005/08/11 17:28:12 aanriot Exp $

COMMENT=	"gtk+ clone of the lines ball logic game"

DISTNAME=	gtkballs-3.1.5
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}dist/ \
		${MASTER_SITE_SUNSITE:=games/strategy/}

HOMEPAGE=	http://gtkballs.antex.ru/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c fontconfig freetype m X11 Xft Xrender \
			atk-1.0.0.0 pango-1.0.0.0 pangox-1.0.0.0 \
			pangoxft-1.0.0.0 gobject-2.0.0.0 \
			glib-2.0.0.0 gmodule-2.0.0.0

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

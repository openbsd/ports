# $OpenBSD: Makefile,v 1.14 2005/12/25 16:15:36 steven Exp $

COMMENT=	"gtk2 spelling checker"
DISTNAME=	gtkspell-2.0.5
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=		gtkspell	0.0
MODGNU_SHARED_LIBS=	gtkspell	''
CATEGORIES=	textproc x11
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://gtkspell.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		X11 atk-1.0.0.0 cairo fontconfig freetype glib-2.0.0.0 \
			gmodule-2.0.0.0 gobject-2.0.0.0 m pango-1.0.0.0 \
			pangocairo-1.0.0.0 pangoft2-1.0.0.0

USE_X11=	Yes

MODULES=	devel/gettext

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	aspell.15.2::textproc/aspell/core \
		gdk_pixbuf-2.0.0.0,gdk-x11-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=--disable-gtk-doc

.include <bsd.port.mk>

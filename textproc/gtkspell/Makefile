# $OpenBSD: Makefile,v 1.10 2004/12/07 00:23:21 alek Exp $

COMMENT=	"gtk2 spelling checker"
DISTNAME=	gtkspell-2.0.5
CATEGORIES=	textproc x11
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://gtkspell.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		gmodule-2.0.0.0 pangoxft-1.0.0.0 glib-2.0.0.0 \
			pangox-1.0.0.0 m X11 Xinerama pango-1.0.0.0 \
			gobject-2.0.0.0 atk-1.0.0.0 Xft fontconfig freetype \
			Xext Xrender

USE_X11=	Yes

MODULES=	gcc3 devel/gettext
MODGCC3_ARCHES=	powerpc
MODGCC3_LANGS=	C++

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	aspell.15.2::textproc/aspell/core \
		gdk_pixbuf-2.0.0.0,gdk-x11-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=--disable-gtk-doc

.include <bsd.port.mk>

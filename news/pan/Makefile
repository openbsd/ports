# $OpenBSD: Makefile,v 1.16 2005/03/15 23:28:19 alek Exp $

COMMENT=	"powerful Gtk+2 newsreader"

VER=		0.14.2
DISTNAME=	pan-${VER}
CATEGORIES=	news x11
MASTER_SITES=	http://pan.rebelbase.com/download/releases/${VER}/SOURCE/

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk_pixbuf-2.0.0.0,gdk-x11-2.0.0.5::x11/gtk+2 \
		gtk-x11-2.0.0.5::x11/gtk+2 \
		gthread-2.0.0.0::devel/glib2 \
		xml2.6.22::textproc/libxml \
		gnet-2.0.0.3::net/gnet

HOMEPAGE=	http://pan.rebelbase.com/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

MODULES=	devel/gettext

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xft Xinerama Xrender atk-1.0.0.0 c \
			fontconfig freetype glib-2.0.0.0 gmodule-2.0.0.0 \
			gobject-2.0.0.0 m pango-1.0.0.0 pangox-1.0.0.0 \
			pangoxft-1.0.0.0 pthread z Xcursor

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-gtkspell
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pan
	${INSTALL_DATA} ${WRKBUILD}/docs/faq.html ${PREFIX}/share/doc/pan

.include <bsd.port.mk>

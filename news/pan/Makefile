# $OpenBSD: Makefile,v 1.14 2004/08/10 09:26:13 xsa Exp $

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

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-gtkspell
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pan
	${INSTALL_DATA} ${WRKBUILD}/docs/faq.html ${PREFIX}/share/doc/pan

.include <bsd.port.mk>

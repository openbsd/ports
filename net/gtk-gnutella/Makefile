# $OpenBSD: Makefile,v 1.23 2005/08/07 21:27:52 sturm Exp $

COMMENT=		"Gtk-based GUI client for the Gnutella Network"

DISTNAME=		gtk-gnutella-0.95.4
CATEGORIES=     	net 

HOMEPAGE=		http://gtk-gnutella.sourceforge.net/

MAINTAINER=		Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xft.5 Xrender.3 atk-1.0.0.0 c fontconfig.2 freetype.13 \
		glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 iconv intl m \
		pango-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtk-gnutella/}
EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		xml2::textproc/libxml

CONFIGURE_STYLE= simple
CONFIGURE_SCRIPT=Configure
# -d don't run interactively
# -e fixes bulk package build
CONFIGURE_ARGS=	-d  -e \
		-D mansrc="${PREFIX}/man/man1" \
		-D prefix="${PREFIX}" \
		-D privlib="${PREFIX}/share/gtk-gnutella" \
		-D cc="${CC}" \
		-D ccflags="${CFLAGS} -I${LOCALBASE}/include" \
		-D gtkversion="2" \
		-D ldflags="-L${LOCALBASE}/lib -liconv" \
		-D official="true" \
		-D yacc="yacc" \
		-U optimize

FAKE_FLAGS=	INSTALL_PREFIX=${DESTDIR}
INSTALL_TARGET=	install install.man

NO_REGRESS=	Yes

.include <bsd.port.mk>

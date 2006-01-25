# $OpenBSD: Makefile,v 1.27 2006/01/25 21:27:31 sturm Exp $

COMMENT=		"Gtk-based GUI client for the Gnutella Network"

DISTNAME=		gtk-gnutella-0.96
CATEGORIES=     	net 

HOMEPAGE=		http://gtk-gnutella.sourceforge.net/

MAINTAINER=		Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext Xft Xrender atk-1.0.0.0 c fontconfig.2 freetype.13 \
		glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 m z \
		pango-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 pangoft2-1.0.0.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtk-gnutella/}
EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		xml2::textproc/libxml

MODULES=	devel/gettext

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
		-U d_gnutls \
		-U optimize

MAKE_FLAGS=	GNUTLS_LDFLAGS= GNUTLS_CFLAGS=
FAKE_FLAGS=	${MAKE_FLAGS} INSTALL_PREFIX=${DESTDIR}
INSTALL_TARGET=	install install.man

NO_REGRESS=	Yes

.include <bsd.port.mk>

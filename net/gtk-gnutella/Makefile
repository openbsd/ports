# $OpenBSD: Makefile,v 1.17 2004/09/21 18:50:01 sturm Exp $

COMMENT=		"Gtk-based GUI client for the Gnutella Network"

DISTNAME=		gtk-gnutella-0.94
CATEGORIES=     	net 

HOMEPAGE=		http://gtk-gnutella.sourceforge.net/

MAINTAINER=		Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gtk-gnutella/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+ \
			xml2::textproc/libxml

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	Configure
# -d don't run interactively
# -e fixes bulk package build
CONFIGURE_ARGS=		-d  -e \
			-D mansrc="${PREFIX}/man/man1" \
			-D prefix="${PREFIX}" \
			-D privlib="${PREFIX}/share/gtk-gnutella" \
			-D cc="${CC}" \
			-D ccflags="${CFLAGS} -I${LOCALBASE}/include" \
			-D ldflags="-L${LOCALBASE}/lib -liconv" \
			-D official="true" \
			-D yacc="yacc" \
			-U optimize

FAKE_FLAGS=		INSTALL_PREFIX=${DESTDIR}
INSTALL_TARGET=		install install.man

.include <bsd.port.mk>

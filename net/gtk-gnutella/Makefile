# $OpenBSD: Makefile,v 1.11 2003/06/19 13:49:21 sturm Exp $

COMMENT=		"Gtk-based GUI client for the Gnutella Network"

DISTNAME=		gtk-gnutella-0.92
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

LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+ \
			xml2::textproc/libxml

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libiconv-prefix="${LOCALBASE}"

SEPARATE_BUILD=		concurrent

post-install:
	${INSTALL_MAN} ${WRKSRC}/debian/gtk-gnutella.1 ${PREFIX}/man/man1
	
.include <bsd.port.mk>

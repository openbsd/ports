# $OpenBSD: Makefile,v 1.8 2002/11/03 16:40:02 naddy Exp $

COMMENT=		"Gtk-based GUI client for the Gnutella Network"

DISTNAME=		gtk-gnutella-0.91
CATEGORIES=     	net 

HOMEPAGE=		http://gtk-gnutella.sourceforge.net/

MAINTAINER=		Nikolay Sturm <sturm@sec.informatik.tu-darmstadt.de>

LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+ \
			xml2::textproc/libxml

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gtk-gnutella/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		concurrent

DOCDIR=			${PREFIX}/share/doc/gtk-gnutella

post-install:
	${INSTALL_MAN} ${WRKSRC}/debian/gtk-gnutella.1 ${PREFIX}/man/man1
	
.include <bsd.port.mk>

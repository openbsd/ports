# $OpenBSD: Makefile,v 1.7 2002/08/03 23:41:21 naddy Exp $

COMMENT=		"Gtk-based GUI client for the Gnutella Network"

VERSION=		0.90
DISTNAME=		gtk-gnutella-${VERSION}
CATEGORIES=     	net 

HOMEPAGE=		http://gtk-gnutella.sourceforge.net/

MAINTAINER=		Nikolay Sturm <sturm@sec.informatik.tu-darmstadt.de>

LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gtk-gnutella/}
EXTRACT_SUFX=		.tar.bz2

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-xml-store
SEPARATE_BUILD=		concurrent

DOCDIR=			${PREFIX}/share/doc/gtk-gnutella

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_MAN} ${WRKSRC}/debian/gtk-gnutella.1 ${PREFIX}/man/man1
	
.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.6 2002/06/25 02:58:09 pvalchev Exp $

COMMENT=		"Gtk-based GUI client for the Gnutella Network"

VERSION=		0.85
DISTNAME=		gtk-gnutella-${VERSION}
CATEGORIES=     	net 
NEED_VERSION=		1.504

HOMEPAGE=		http://gtk-gnutella.sourceforge.net/

MAINTAINER=		Nikolay Sturm <sturm@sec.informatik.tu-darmstadt.de>

LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gtk-gnutella/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes

DOCDIR=			${PREFIX}/share/doc/gtk-gnutella

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_MAN} ${WRKSRC}/debian/gtk-gnutella.1 ${PREFIX}/man/man1
	
.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.2 2001/10/24 12:29:50 espie Exp $

COMMENT=		"Gtk-based GUI client for the Gnutella Network"

VERSION=		0.12
DISTNAME=		gtk-gnutella-${VERSION}
CATEGORIES=     	net audio
NEED_VERSION=		1.474

HOMEPAGE=		http://gtk-gnutella.sourceforge.net/

MAINTAINER=		Flinn Mueller <flinn@activeintra.net>

LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	gtk-gnutella

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes

.include <bsd.port.mk>

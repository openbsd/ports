# $OpenBSD: Makefile,v 1.13 2004/09/30 19:26:42 naddy Exp $

COMMENT=	"Netscape cache browser"

DISTNAME=	nscache-0.6
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nscache/ }
EXTRACT_SUFX=	.tgz

# GPL
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-gnome

.include <bsd.port.mk>

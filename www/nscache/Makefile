# $OpenBSD: Makefile,v 1.15 2006/08/04 00:10:42 espie Exp $

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
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m

LIB_DEPENDS=	gtk.>=1.2,gdk.>=1.2::x11/gtk+

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-gnome

.include <bsd.port.mk>

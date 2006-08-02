# $OpenBSD: Makefile,v 1.8 2006/08/02 09:36:20 espie Exp $
COMMENT=	"computer simulation game"

DISTNAME=	corewars-0.9.12
PKGNAME=	${DISTNAME}p0

CATEGORIES=	games x11

HOMEPAGE=	http://corewars.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m

LIB_DEPENDS=	gtk.>=1.2,gdk::x11/gtk+ 

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=corewars/}

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>

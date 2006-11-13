# $OpenBSD: Makefile,v 1.9 2006/11/13 10:08:12 steven Exp $
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
USE_X11=	Yes

.include <bsd.port.mk>

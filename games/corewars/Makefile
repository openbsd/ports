# $OpenBSD: Makefile,v 1.6 2005/02/14 00:35:53 pvalchev Exp $
COMMENT=	"computer simulation game"

VERSION=	0.9.12
DISTNAME=	corewars-${VERSION}

CATEGORIES=	games x11

HOMEPAGE=	http://corewars.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m

LIB_DEPENDS=	gtk.1.2,gdk::x11/gtk+ 

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=corewars/}

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>

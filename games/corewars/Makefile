# $OpenBSD: Makefile,v 1.2 2002/05/13 18:50:42 espie Exp $
COMMENT=	"computer simulation game"

VERSION=	0.9.12
DISTNAME=	corewars-${VERSION}
NEED_VERSION=	1.500

CATEGORIES=	games x11

HOMEPAGE=	http://corewars.sourceforge.net/

MAINTAINER=	Lurene Grenier <lurene@menagerie.tf>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	gtk.1.2,gdk::x11/gtk+ 

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=corewars/}

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.11 2002/12/29 15:03:57 fgsch Exp $

COMMENT=	"Netscape cache browser"

DISTNAME=	nscache-0.6
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nscache/ }
EXTRACT_SUFX=	.tgz

MAINTAINER=	Dug Song <dugsong@monkey.org>

# GPL
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>

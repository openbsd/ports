# $OpenBSD: Makefile,v 1.8 2001/06/02 22:47:38 dugsong Exp $

COMMENT=	"Netscape cache browser"

DISTNAME=	nscache-0.6
CATEGORIES=	www
NEED_VERSION=	1.402
MASTER_SITES=	http://prdownloads.sourceforge.net/nscache/ \
		http://www.idata.sk/~ondrej/sw/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Dug Song <dugsong@monkey.org>

# GPL
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

LIB_DEPENDS=	gtk.1.2::x11/gtk+

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>

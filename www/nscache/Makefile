# $OpenBSD: Makefile,v 1.9 2001/10/24 12:38:46 espie Exp $

COMMENT=	"Netscape cache browser"

DISTNAME=	nscache-0.6
CATEGORIES=	www
NEED_VERSION=	1.474
MASTER_SITES=	http://prdownloads.sourceforge.net/nscache/ \
		http://www.idata.sk/~ondrej/sw/
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

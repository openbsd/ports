# $OpenBSD: Makefile,v 1.1.1.1 2003/07/05 18:58:35 sturm Exp $

COMMENT=	"log colorizer"

DISTNAME=	ccze-0.2.1	
CATEGORIES=	misc

MAINTAINER=	Robert Nagy <thuglife@bsd.hu>

HOMEPAGE=	http://bonehunter.rulez.org/CCZE.phtml

MASTER_SITES=	ftp://bonehunter.rulez.org/pub/ccze/stable/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	pcreposix,pcre::devel/pcre

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.4 2004/04/18 06:41:11 robert Exp $

COMMENT=	"log colorizer"

DISTNAME=	ccze-0.2.1	
PKGNAME=	${DISTNAME}p0
CATEGORIES=	misc

MAINTAINER=	Robert Nagy <robert@openbsd.org>

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
CONFIGURE_ARGS=	--with-builtins=all

.include <bsd.port.mk>

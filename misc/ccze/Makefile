# $OpenBSD: Makefile,v 1.5 2004/12/22 11:48:33 alek Exp $

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
WANTLIB=		c ncurses

LIB_DEPENDS=	pcreposix,pcre::devel/pcre

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-builtins=all

.include <bsd.port.mk>

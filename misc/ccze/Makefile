# $OpenBSD: Makefile,v 1.2 2003/07/16 09:40:29 sturm Exp $

COMMENT=	"log colorizer"

DISTNAME=	ccze-0.2.1	
PKGNAME=	${DISTNAME}p0
CATEGORIES=	misc

MAINTAINER=	Robert Nagy <thuglife@bsd.hu>

HOMEPAGE=	http://bonehunter.rulez.org/CCZE.phtml

MASTER_SITES=	ftp://bonehunter.rulez.org/pub/ccze/stable/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

LIB_DEPENDS=	pcreposix,pcre::devel/pcre

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-builtins=all

.include <bsd.port.mk>

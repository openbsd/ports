# $OpenBSD: Makefile,v 1.7 2006/02/01 16:29:47 robert Exp $

COMMENT=	"log colorizer"

DISTNAME=	ccze-0.2.1	
PKGNAME=	${DISTNAME}p1
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

LIB_DEPENDS=	pcre::devel/pcre

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-builtins=all

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ccze
	${WRKSRC}/src/ccze-dump > ${PREFIX}/share/examples/ccze/cczerc

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.7 2001/04/14 11:36:21 naddy Exp $

COMMENT=	"command line interface to popular WWW search engines"

DISTNAME=	surfraw-1.0.3
CATEGORIES=	www
NEED_VERSION=	1.363
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= surfraw

HOMEPAGE=	http://surfraw.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/surfraw
	${INSTALL_DATA} ${WRKSRC}/surfraw.conf ${PREFIX}/share/examples/surfraw

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.5 2000/09/28 15:56:26 naddy Exp $

DISTNAME=	surfraw-1.0.2
CATEGORIES=	www
NEED_VERSION=	1.324
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= surfraw

HOMEPAGE=	http://surfraw.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/surfraw
	${INSTALL_DATA} ${WRKSRC}/surfraw.conf ${PREFIX}/share/examples/surfraw

.include <bsd.port.mk>

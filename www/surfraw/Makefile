# $OpenBSD: Makefile,v 1.3 2000/09/06 05:48:49 brad Exp $

DISTNAME=	surfraw-1.0.1
CATEGORIES=	www
NEED_VERSION=	1.324
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= surfraw

HOMEPAGE=	http://surfraw.sourceforge.net/

MAINTAINER=	naddy@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/surfraw
	${INSTALL_DATA} ${WRKSRC}/surfraw.conf ${PREFIX}/share/examples/surfraw

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.2 2000/09/01 15:54:34 naddy Exp $

DISTNAME=	surfraw-1.0.1
CATEGORIES=    	www
NEED_VERSION=	1.322

HOMEPAGE=	http://surfraw.sourceforge.net/

MAINTAINER=	naddy@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	surfraw

CONFIGURE_STYLE=	gnu
SUBST_VARS=		SYSCONFDIR

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/surfraw
	${INSTALL_DATA} ${WRKSRC}/surfraw.conf ${PREFIX}/share/examples/surfraw

.include <bsd.port.mk>

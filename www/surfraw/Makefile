# $OpenBSD: Makefile,v 1.1.1.1 2000/08/21 15:09:31 naddy Exp $

DISTNAME=	surfraw-0.5.7
CATEGORIES=    	www
NEED_VERSION=	1.319

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
	${INSTALL_DATA} ${WRKSRC}/surfraw.conf ${PREFIX}/share/examples/

.include <bsd.port.mk>

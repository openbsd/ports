# $OpenBSD: Makefile,v 1.2 2001/03/24 12:51:47 reinhard Exp $

COMMENT=	'gnu curses-based napster client'

DISTNAME=	nap-1.4.4
CATEGORIES=    	audio
NEED_VERSION=	1.363

HOMEPAGE=	http://nap.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= nap

MAINTAINER=	Peter Valchev <pvalchev@home.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nap
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nap
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nap
	${INSTALL_DATA} ${WRKSRC}/nap.conf.dist ${PREFIX}/share/examples/nap

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2001/02/04 18:55:33 reinhard Exp $

DISTNAME=	nap-1.4.4
CATEGORIES=    	audio
NEED_VERSION=	1.352

HOMEPAGE=	http://nap.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= nap

MAINTAINER=	Peter Valchev <pvalchev@toxiclinux.org>

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

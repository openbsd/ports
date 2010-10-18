# $OpenBSD: Makefile,v 1.3 2010/10/18 18:36:55 espie Exp $

COMMENT=	extension for UPnP

MODULES=	cpan
DISTNAME=	Net-UPnP-1.2.4
CATEGORIES=	net
USE_GROFF =	Yes

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Net-UPnP
	${INSTALL_DATA} ${WRKSRC}/examples/*.pl \
		${PREFIX}/share/examples/p5-Net-UPnP

.include <bsd.port.mk>

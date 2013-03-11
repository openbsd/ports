# $OpenBSD: Makefile,v 1.9 2013/03/11 11:35:52 espie Exp $

COMMENT=	perl client for Apple iTunes DAAP service

MODULES=	cpan
DISTNAME=	Net-DAAP-Client-0.42
REVISION=	0
CATEGORIES=	net
USE_GROFF =	Yes

# same as perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-libwww \
		net/p5-Net-DAAP-DMAP \
		security/p5-Digest-MD5-M4p
BUILD_DEPENDS=	${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Net-DAAP-Client
	${INSTALL_SCRIPT} ${WRKSRC}/examples/itshell \
		${PREFIX}/share/examples/p5-Net-DAAP-Client

.include <bsd.port.mk>

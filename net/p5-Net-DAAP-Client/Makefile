# $OpenBSD: Makefile,v 1.7 2010/11/19 22:31:35 espie Exp $

COMMENT=	perl client for Apple iTunes DAAP service

MODULES=	cpan
DISTNAME=	Net-DAAP-Client-0.42
CATEGORIES=	net
USE_GROFF =	Yes

# same as perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	www/p5-libwww \
		net/p5-Net-DAAP-DMAP \
		security/p5-Digest-MD5-M4p
BUILD_DEPENDS=	${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Net-DAAP-Client
	${INSTALL_SCRIPT} ${WRKSRC}/examples/itshell \
		${PREFIX}/share/examples/p5-Net-DAAP-Client

.include <bsd.port.mk>

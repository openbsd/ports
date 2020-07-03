# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:32 sthen Exp $

COMMENT=	perl client for Apple iTunes DAAP service

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-DAAP-Client-0.42
REVISION=	1
CATEGORIES=	net

# same as perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-libwww \
		net/p5-Net-DAAP-DMAP \
		security/p5-Digest-MD5-M4p
BUILD_DEPENDS=	${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Net-DAAP-Client
	${INSTALL_SCRIPT} ${WRKSRC}/examples/itshell \
		${PREFIX}/share/examples/p5-Net-DAAP-Client

.include <bsd.port.mk>

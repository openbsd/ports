# $OpenBSD: Makefile,v 1.4 2007/01/14 20:49:05 simon Exp $

COMMENT=	"perl client for Apple iTunes DAAP service"

MODULES=	cpan
DISTNAME=	Net-DAAP-Client-0.42
CATEGORIES=	net

# same as perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	:p5-libwww-*:www/p5-libwww \
		:p5-Net-DAAP-DMAP-*:net/p5-Net-DAAP-DMAP \
		:p5-Digest-MD5-M4p-*:security/p5-Digest-MD5-M4p
BUILD_DEPENDS=	${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Net-DAAP-Client
	${INSTALL_SCRIPT} ${WRKSRC}/examples/itshell \
		${PREFIX}/share/examples/p5-Net-DAAP-Client

.include <bsd.port.mk>

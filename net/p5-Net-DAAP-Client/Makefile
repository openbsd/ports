# $OpenBSD: Makefile,v 1.2 2005/03/30 21:15:21 jolan Exp $
PKG_ARCH=	*

COMMENT=	"perl client for Apple iTunes DAAP service"
DISTNAME=	Net-DAAP-Client-0.42
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

# same as perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS=	:p5-libwww-*:www/p5-libwww \
		:p5-Net-DAAP-DMAP-*:net/p5-Net-DAAP-DMAP \
		:p5-Digest-MD5-M4p-*:security/p5-Digest-MD5-M4p
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=perl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Net-DAAP-Client
	${INSTALL_SCRIPT} ${WRKSRC}/examples/itshell \
		${PREFIX}/share/examples/p5-Net-DAAP-Client

.include <bsd.port.mk>

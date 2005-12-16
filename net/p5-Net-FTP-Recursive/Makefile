# $OpenBSD: Makefile,v 1.1.1.1 2005/12/16 16:57:35 steven Exp $

COMMENT=	"recursive FTP client module"

DISTNAME=	Net-FTP-Recursive-2.00
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

MAINTAINER=	Sam Smith <s@msmith.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

EXAMPLE_DIR=${PREFIX}/share/examples/p5-Net-FTP-Recursive

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/samples/* ${EXAMPLE_DIR}

.include <bsd.port.mk>

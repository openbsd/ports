# $OpenBSD: Makefile,v 1.10 2005/12/09 00:38:42 steven Exp $

COMMENT=	"perl interface to SSL sockets"

VERSION=	0.97
DISTNAME=	IO-Socket-SSL-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IO/}

RUN_DEPENDS=	:p5-Net-SSLeay->=1.21:security/p5-Net_SSLeay
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

PKG_ARCH=	*

EXDIR=		${PREFIX}/share/examples/p5-IO-Socket-SSL/

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${EXDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/example/*.pl ${EXDIR}

.include <bsd.port.mk>

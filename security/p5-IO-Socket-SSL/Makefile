# $OpenBSD: Makefile,v 1.6 2002/09/01 15:16:17 shell Exp $

COMMENT=	"perl interface to SSL sockets"

VERSION=	0.91
DISTNAME=	IO-Socket-SSL-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IO/}

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:p5-Net-SSLeay->=1.03:security/p5-Net_SSLeay
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

EXDIR=		${PREFIX}/share/examples/p5-IO-Socket-SSL/

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${EXDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/example/*.pl ${EXDIR}

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.5 2002/06/09 05:32:03 wilfried Exp $

COMMENT=	"perl interface to SSL sockets"

VERSION=	0.81
DISTNAME=	IO-Socket-SSL-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
NEED_VERSION=	1.524

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
	${INSTALL_DATA} ${WRKSRC}/docs/*.jpg ${EXDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/demo/*.pl ${EXDIR}

.include <bsd.port.mk>

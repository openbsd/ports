# $OpenBSD: Makefile,v 1.8 2002/06/09 05:31:59 wilfried Exp $

COMMENT=	"perl module to gateway between news and mail"

DISTNAME=	Gateway-0.42
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	news perl5
NEED_VERSION=	1.502
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=News/}

MAINTAINER=	Shell Hung <shell@openbsd.org>

BUILD_DEPENDS=	:p5-PGP-Sign-*:security/p5-PGP-Sign \
		:p5-libnet-*:net/p5-libnet \
		:p5-News-Article->=1.07:news/p5-News-Article
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

# install example files
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Gateway
	${INSTALL_DATA} ${WRKSRC}/examples/*  \
		${PREFIX}/share/examples/p5-Gateway

.include <bsd.port.mk>

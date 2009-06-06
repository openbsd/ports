# $OpenBSD: Makefile,v 1.15 2009/06/06 21:59:38 ajacoutot Exp $

COMMENT=	perl module to gateway between news and mail

MODULES=	cpan
DISTNAME=	Gateway-0.42
PKGNAME=	p5-${DISTNAME}p2
CATEGORIES=	news
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=News/}

RUN_DEPENDS=	:p5-PGP-Sign-*:security/p5-PGP-Sign \
		:p5-News-Article->=1.07:news/p5-News-Article
BUILD_DEPENDS=	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# install example files
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Gateway
	${INSTALL_DATA} ${WRKSRC}/examples/*  \
		${PREFIX}/share/examples/p5-Gateway

.include <bsd.port.mk>

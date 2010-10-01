# $OpenBSD: Makefile,v 1.18 2010/10/01 22:22:23 jasper Exp $

COMMENT=	perl module to gateway between news and mail

MODULES=	cpan
DISTNAME=	Gateway-0.42
REVISION=	3
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

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>

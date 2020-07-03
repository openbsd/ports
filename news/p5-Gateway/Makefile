# $OpenBSD: Makefile,v 1.26 2020/07/03 21:45:39 sthen Exp $

COMMENT=	perl module to gateway between news and mail

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Gateway-0.42
REVISION=	5
CATEGORIES=	news
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=News/}

RUN_DEPENDS=	security/p5-PGP-Sign \
		news/p5-News-Article>=1.07
BUILD_DEPENDS=	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE=	Yes

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>

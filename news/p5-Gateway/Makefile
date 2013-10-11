# $OpenBSD: Makefile,v 1.23 2013/10/11 23:50:37 naddy Exp $

COMMENT=	perl module to gateway between news and mail

MODULES=	cpan
DISTNAME=	Gateway-0.42
REVISION=	4
CATEGORIES=	news
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=News/}

RUN_DEPENDS=	security/p5-PGP-Sign \
		news/p5-News-Article>=1.07
BUILD_DEPENDS=	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>

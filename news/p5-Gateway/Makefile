# $OpenBSD: Makefile,v 1.22 2013/03/11 11:35:58 espie Exp $

COMMENT=	perl module to gateway between news and mail

MODULES=	cpan
DISTNAME=	Gateway-0.42
REVISION=	4
CATEGORIES=	news
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=News/}
USE_GROFF =	Yes

RUN_DEPENDS=	security/p5-PGP-Sign \
		news/p5-News-Article>=1.07
BUILD_DEPENDS=	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>

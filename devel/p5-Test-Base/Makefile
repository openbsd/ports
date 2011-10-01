# $OpenBSD: Makefile,v 1.8 2011/10/01 08:37:32 jasper Exp $

COMMENT= 	data driven test framework

MODULES=	cpan 

DISTNAME=	Test-Base-0.60
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Spiffy

REGRESS_DEPENDS=devel/p5-Test-Deep \
		devel/p5-YAML

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.6 2010/11/15 19:46:06 espie Exp $

COMMENT= 	data driven test framework

MODULES=	cpan 
USE_GROFF =	Yes

DISTNAME=	Test-Base-0.59
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

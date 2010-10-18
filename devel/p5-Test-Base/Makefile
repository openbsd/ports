# $OpenBSD: Makefile,v 1.5 2010/10/18 17:48:07 espie Exp $

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

RUN_DEPENDS=	::devel/p5-Spiffy

REGRESS_DEPENDS=::devel/p5-Test-Deep \
		::devel/p5-YAML

.include <bsd.port.mk>

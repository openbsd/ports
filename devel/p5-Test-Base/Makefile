# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:36 ajacoutot Exp $

COMMENT= 	data driven test framework

MODULES=	cpan 
USE_GROFF =	Yes

DISTNAME=	Test-Base-0.59
REVISION=	0
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

# $OpenBSD: Makefile,v 1.4 2010/06/29 04:47:59 jim Exp $

COMMENT= 	data driven test framework

MODULES=	cpan 

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

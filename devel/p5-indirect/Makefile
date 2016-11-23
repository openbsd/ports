# $OpenBSD: Makefile,v 1.8 2016/11/23 21:48:20 bluhm Exp $

COMMENT=	lexically warn about using the indirect method call syntax

MODULES=	cpan
DISTNAME=	indirect-0.37
CATEGORIES=	devel

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>
CPAN_AUTHOR=	VPIT

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	perl

TEST_DEPENDS=	devel/p5-Devel-Declare

.include <bsd.port.mk>

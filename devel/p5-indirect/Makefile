# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:42 naddy Exp $

COMMENT=	lexically warn about using the indirect method call syntax

MODULES=	cpan
DISTNAME=	indirect-0.33
CATEGORIES=	devel
REVISION=	0

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>
CPAN_AUTHOR=	VPIT

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	perl

TEST_DEPENDS=	devel/p5-Devel-Declare

.include <bsd.port.mk>

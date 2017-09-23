# $OpenBSD: Makefile,v 1.9 2017/09/23 10:51:07 sthen Exp $

COMMENT=	lexically warn about using the indirect method call syntax

MODULES=	cpan
DISTNAME=	indirect-0.37
CATEGORIES=	devel
REVISION=	0

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>
CPAN_AUTHOR=	VPIT

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

TEST_DEPENDS=	devel/p5-Devel-Declare

.include <bsd.port.mk>

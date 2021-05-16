# $OpenBSD: Makefile,v 1.1.1.1 2021/05/16 15:13:03 naddy Exp $

COMMENT=	translate find command lines to Perl code

V=		1.005
DISTNAME=	App-find2perl-$V
PKGNAME=	find2perl-$V
CATEGORIES=	sysutils

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

TEST_DEPENDS=	devel/p5-Devel-FindPerl

.include <bsd.port.mk>

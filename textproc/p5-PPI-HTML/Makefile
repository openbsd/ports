# $OpenBSD: Makefile,v 1.11 2019/07/12 20:50:04 sthen Exp $

COMMENT=		parse, analyze and manipulate Perl

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		PPI-HTML-1.08
REVISION=		1
CATEGORIES=		textproc www
CPAN_AUTHOR=		ADAMK

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		textproc/p5-PPI \
			www/p5-CSS-Tiny

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>

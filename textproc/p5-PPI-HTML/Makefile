# $OpenBSD: Makefile,v 1.9 2013/10/11 23:51:13 naddy Exp $

COMMENT=		parse, analyze and manipulate Perl

MODULES=		cpan
DISTNAME=		PPI-HTML-1.08
REVISION=		1
CATEGORIES=		textproc www
CPAN_AUTHOR=		ADAMK

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		textproc/p5-PPI \
			www/p5-CSS-Tiny

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.13 2019/05/17 21:10:47 cwen Exp $

COMMENT=		module to diff based on word, not lines

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Text-WordDiff-0.09
CATEGORIES=		textproc

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Algorithm-Diff>=1.19 \
			www/p5-HTML-Parser

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>

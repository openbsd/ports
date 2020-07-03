# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:52 sthen Exp $

COMMENT=		module to diff based on word, not lines

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Text-WordDiff-0.09
CATEGORIES=		textproc
REVISION=		0

# Perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Algorithm-Diff>=1.19 \
			www/p5-HTML-Parser

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>

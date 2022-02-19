# $OpenBSD: Makefile,v 1.11 2022/02/19 10:04:54 sthen Exp $

COMMENT=	extension for generating XML

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	XML-Generator-1.09
CATEGORIES=	textproc

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-XML-DOM
TEST_DEPENDS=	devel/p5-Tie-IxHash

.include <bsd.port.mk>

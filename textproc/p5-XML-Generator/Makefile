# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:52 sthen Exp $

COMMENT=	extension for generating XML

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	XML-Generator-1.04
CATEGORIES=	textproc
REVISION =	1

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-XML-DOM
TEST_DEPENDS=devel/p5-Tie-IxHash

.include <bsd.port.mk>

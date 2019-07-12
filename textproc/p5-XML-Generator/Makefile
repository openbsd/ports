# $OpenBSD: Makefile,v 1.9 2019/07/12 20:50:08 sthen Exp $

COMMENT=	extension for generating XML

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	XML-Generator-1.04
CATEGORIES=	textproc
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-XML-DOM
TEST_DEPENDS=devel/p5-Tie-IxHash

.include <bsd.port.mk>

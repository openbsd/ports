# $OpenBSD: Makefile,v 1.8 2016/03/20 19:57:11 naddy Exp $

COMMENT=	extension for generating XML

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	XML-Generator-1.04
CATEGORIES=	textproc
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-DOM
TEST_DEPENDS=devel/p5-Tie-IxHash

.include <bsd.port.mk>

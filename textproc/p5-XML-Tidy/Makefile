# $OpenBSD: Makefile,v 1.6 2020/07/03 21:45:54 sthen Exp $

COMMENT=	tidy indenting of XML documents

DISTNAME=	XML-Tidy-1.20
EXTRACT_SUFX=	.tgz
REVISION=	0

CATEGORIES=	textproc

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*
RUN_DEPENDS=	math/p5-Math-BaseCnv \
		textproc/p5-XML-XPath
TEST_DEPENDS=	devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>

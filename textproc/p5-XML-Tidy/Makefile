# $OpenBSD: Makefile,v 1.5 2019/07/12 20:50:09 sthen Exp $

COMMENT=	tidy indenting of XML documents

DISTNAME=	XML-Tidy-1.20
EXTRACT_SUFX=	.tgz

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

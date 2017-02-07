# $OpenBSD: Makefile,v 1.3 2017/02/07 14:23:28 sthen Exp $

COMMENT=	tidy indenting of XML documents

DISTNAME=	XML-Tidy-1.16
EXTRACT_SUFX=	.tgz

CATEGORIES=	textproc

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
PKG_ARCH=	*
RUN_DEPENDS=	math/p5-Math-BaseCnv \
		textproc/p5-XML-XPath
TEST_DEPENDS=	devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>

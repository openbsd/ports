# $OpenBSD: Makefile,v 1.26 2019/11/03 14:07:46 jasper Exp $

COMMENT=	perl module for parsing huge XML documents

DISTNAME=	XML-Twig-3.52
CATEGORIES=	textproc
REVISION=	1

# perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*
CPAN_AUTHOR=	MIROD

RUN_DEPENDS=	devel/p5-Tie-IxHash \
		textproc/p5-XML-Parser \
		textproc/p5-XML-XPathEngine \
		www/p5-libwww \
		www/p5-HTML-Parser \
		www/p5-HTML-Tidy \
		www/p5-HTML-Tree
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=	converters/p5-Text-Iconv \
		converters/p5-Unicode-Map \
		converters/p5-Unicode-Map8 \
		converters/p5-Unicode-String \
		devel/p5-IO-CaptureOutput \
		devel/p5-IO-stringy \
		devel/p5-Test-Pod \
		textproc/p5-XML-SAX \
		textproc/p5-XML-Simple \
		textproc/p5-XML-XPath

.include <bsd.port.mk>

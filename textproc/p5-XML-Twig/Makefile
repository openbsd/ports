# $OpenBSD: Makefile,v 1.18 2013/03/11 11:42:45 espie Exp $

COMMENT=	perl module for parsing huge XML documents

DISTNAME=	XML-Twig-3.41
REVISION=	0
CATEGORIES=	textproc

HOMEPAGE=	http://www.xmltwig.com/xmltwig/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
CPAN_AUTHOR=	MIROD

USE_GROFF =	Yes

RUN_DEPENDS=	devel/p5-Tie-IxHash \
		textproc/p5-XML-Parser \
		textproc/p5-XML-XPathEngine \
		www/p5-HTML-Tidy \
		www/p5-HTML-Tree
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=converters/p5-Text-Iconv \
		converters/p5-Unicode-Map \
		converters/p5-Unicode-Map8 \
		converters/p5-Unicode-String \
		devel/p5-IO-stringy \
		devel/p5-Test-Pod \
		devel/p5-Tie-IxHash \
		textproc/p5-XML-SAX \
		textproc/p5-XML-Simple \
		textproc/p5-XML-XPath \
		www/p5-libwww

.include <bsd.port.mk>

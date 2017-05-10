# $OpenBSD: Makefile,v 1.1.1.1 2017/05/10 11:30:25 pirofti Exp $

COMMENT =	LaTeX to XML/HTML/MathML Converter

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	LaTeXML-0.8.2
CATEGORIES =	textproc

# perl
PERMIT_PACKAGE_CDROM =	Yes

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

CPAN_AUTHOR =	BRMILLER

LIB_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =	archivers/p5-Archive-Zip \
		converters/p5-JSON-XS \
		devel/p5-IO-String \
		devel/p5-Parse-RecDescent \
		devel/p5-UUID-Tiny \
		graphics/ImageMagick \
		graphics/p5-Image-Size \
		print/texlive/base \
		textproc/p5-Text-Unidecode \
		textproc/p5-XML-LibXML \
		textproc/p5-XML-LibXSLT

TEST_DEPENDS =  sysutils/p5-File-Which

.include <bsd.port.mk>

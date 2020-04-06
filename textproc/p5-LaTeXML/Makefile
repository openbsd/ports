# $OpenBSD: Makefile,v 1.10 2020/04/06 08:48:07 pirofti Exp $

COMMENT =	LaTeX to XML/HTML/MathML Converter

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	LaTeXML-0.8.4
CATEGORIES =	textproc
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

MAINTAINER =	Paul Irofti <paul@irofti.net>

CPAN_AUTHOR =	BRMILLER

CONFIGURE_ARGS = TEXMF=${PREFIX}/share/texmf-local

BUILD_DEPENDS =	devel/p5-Parse-RecDescent

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

TEST_DEPENDS =	sysutils/p5-File-Which \
		www/p5-URI \
		www/p5-libwww

.include <bsd.port.mk>

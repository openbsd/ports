# $OpenBSD: Makefile,v 1.1.1.1 2020/08/25 23:41:26 cwen Exp $

COMMENT =		bioperl variation-related functionality

DISTNAME =		Bio-Variation-1.7.5

CATEGORIES =		biology

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		biology/p5-Bio-DB-EMBL \
			biology/p5-Bio-DB-NCBIHelper \
			biology/bioperl>=1.7.7 \
			devel/p5-IO-String \
			textproc/p5-XML-Twig \
			textproc/p5-XML-Writer>=0.4

PKG_ARCH =		*

.include <bsd.port.mk>

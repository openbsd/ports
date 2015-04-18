# $OpenBSD: Makefile,v 1.1.1.1 2015/04/18 12:38:20 schwarze Exp $

COMMENT =	compare XML in perl tests

MODULES =	cpan
DISTNAME =	Test-XML-0.08
CATEGORIES =	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =	SEMANTICO

RUN_DEPENDS =	textproc/p5-XML-Parser \
		textproc/p5-XML-SemanticDiff

CONFIGURE_STYLE = perl

.include <bsd.port.mk>

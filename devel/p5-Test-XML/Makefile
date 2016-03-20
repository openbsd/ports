# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:39 naddy Exp $

COMMENT =	compare XML in perl tests

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-XML-0.08
CATEGORIES =	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =	SEMANTICO

RUN_DEPENDS =	textproc/p5-XML-Parser \
		textproc/p5-XML-SemanticDiff

CONFIGURE_STYLE = perl

.include <bsd.port.mk>

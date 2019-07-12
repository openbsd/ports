# $OpenBSD: Makefile,v 1.4 2019/07/12 20:45:12 sthen Exp $

COMMENT =	compare XML in perl tests

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-XML-0.08
CATEGORIES =	devel
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =	SEMANTICO

RUN_DEPENDS =	textproc/p5-XML-Parser \
		textproc/p5-XML-SemanticDiff

CONFIGURE_STYLE = perl

.include <bsd.port.mk>

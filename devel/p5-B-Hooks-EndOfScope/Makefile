# $OpenBSD: Makefile,v 1.16 2019/07/12 20:44:44 sthen Exp $

COMMENT =	execute code after a scope finished compilation

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	B-Hooks-EndOfScope-0.24
CATEGORIES =	devel
FIX_EXTRACT_PERMISSIONS =	Yes

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-Module-Implementation \
		devel/p5-Module-Runtime \
		devel/p5-Sub-Exporter-Progressive \
		devel/p5-Variable-Magic>=0.48

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.14 2017/05/06 14:36:47 benoit Exp $

COMMENT =	execute code after a scope finished compilation

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	B-Hooks-EndOfScope-0.21
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Module-Implementation \
		devel/p5-Module-Runtime \
		devel/p5-Sub-Exporter-Progressive \
		devel/p5-Variable-Magic>=0.48

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.15 2018/12/07 07:25:53 solene Exp $

COMMENT =	execute code after a scope finished compilation

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	B-Hooks-EndOfScope-0.24
CATEGORIES =	devel
FIX_EXTRACT_PERMISSIONS =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Module-Implementation \
		devel/p5-Module-Runtime \
		devel/p5-Sub-Exporter-Progressive \
		devel/p5-Variable-Magic>=0.48

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.10 2015/01/21 14:27:55 sthen Exp $

COMMENT =	execute code after a scope finished compilation

MODULES =	cpan
DISTNAME =	B-Hooks-EndOfScope-0.13
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Module-Implementation \
		devel/p5-Module-Runtime \
		devel/p5-Sub-Exporter-Progressive \
		devel/p5-Variable-Magic>=0.48

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.9 2014/03/22 14:02:25 jasper Exp $

COMMENT =	execute code after a scope finished compilation

MODULES =	cpan
DISTNAME =	B-Hooks-EndOfScope-0.13
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Module-Implementation \
		devel/p5-Module-Runtime \
		devel/p5-Sub-Exporter-Progressive \
		devel/p5-Variable-Magic>=0.48

.include <bsd.port.mk>

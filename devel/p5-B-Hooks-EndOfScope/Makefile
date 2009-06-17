# $OpenBSD: Makefile,v 1.3 2009/06/17 21:15:41 simon Exp $

COMMENT =	execute code after a scope finished compilation

MODULES =	cpan
DISTNAME =	B-Hooks-EndOfScope-0.08
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-Sub-Exporter \
		:p5-Variable-Magic->=0.34:devel/p5-Variable-Magic

.include <bsd.port.mk>
